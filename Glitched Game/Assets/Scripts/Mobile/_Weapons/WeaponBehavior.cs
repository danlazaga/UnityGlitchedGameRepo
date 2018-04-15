using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

public class WeaponBehavior { }

public abstract class Ballistics : NetworkBehaviour
{
	protected Transform firePoint;
	protected float fireForce;
}

public class DefaultLauncher : Ballistics, IWeapon
{

	public void Initialize(Transform firePoint, float fireForce)
	{
		this.firePoint = firePoint;
		this.fireForce = fireForce;
	}

	public void Shoot()
	{
		CmdShoot();
	}

	[Command]
	void CmdShoot()
	{
		var bullet = ObjectPool.Instance.GetPooledObject("DefaultBullet");
		bullet.SetTransformPoint(firePoint);
		bullet.SetActive(true);
		bullet.GetComponent<Rigidbody>().velocity = transform.forward * fireForce;

		// spawn bullet on client, custom spawn handler will be called
		NetworkServer.Spawn(bullet);

		// when the bullet is destroyed on the server it is automatically destroyed on clients
		StartCoroutine(Destroy(bullet, 5.0f));
	}

	public IEnumerator Destroy(GameObject go, float timer)
	{
		yield return new WaitForSeconds(timer);
		ObjectPool.Instance.ReturnToPool(go);
	}

}

public class ShieldBreakerLauncher : Ballistics, IWeapon
{
	public void Initialize(Transform firePoint, float fireForce)
	{
		this.firePoint = firePoint;
		this.fireForce = fireForce;
	}

	public void Shoot()
	{

	}
}