using UnityEngine;
using System.Collections;
using UnityEngine.Networking;

public class WeaponBehavior { }

public abstract class Ballistics : NetworkBehaviour
{
	protected Transform firePoint;
}

public class DefaultLauncher : Ballistics, IWeapon
{

	public void Initialize(Transform firePoint)
	{
		this.firePoint = firePoint;
	}

	public void Shoot()
	{
		CmdShoot();
	}

	[Command]
	void CmdShoot()
	{
		var bullet = BulletPool.Instance.GetPooledObject(firePoint.position);
		bullet.GetComponent<Rigidbody>().velocity = transform.forward * 6;

		// spawn bullet on client, custom spawn handler will be called
		NetworkServer.Spawn(bullet, BulletPool.Instance.assetId);

		// when the bullet is destroyed on the server it is automatically destroyed on clients
		StartCoroutine(Destroy(bullet, 2.0f));
	}

	public IEnumerator Destroy(GameObject go, float timer)
	{
	    yield return new WaitForSeconds(timer);
	    BulletPool.Instance.UnSpawnObject(go);
	    NetworkServer.UnSpawn(go);
	}

}

public class ShieldBreakerLauncher : Ballistics, IWeapon
{
	public void Initialize(Transform firePoint)
	{
		this.firePoint = firePoint;
	}

	public void Shoot()
	{

	}
}