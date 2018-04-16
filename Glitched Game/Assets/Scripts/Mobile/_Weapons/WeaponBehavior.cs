using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

public class WeaponBehavior { }

public abstract class Ballistics : NetworkBehaviour
{
	protected TurretWeaponEffects turretEffects;
	protected Transform firePoint;
	protected float weaponRange;
	protected LineRenderer laserLine;
	protected WaitForSeconds shotDuration = new WaitForSeconds(0.07f);

}

public class DefaultLauncher : Ballistics, IWeapon
{

	public void Initialize(TurretWeaponEffects turretEffects, LineRenderer laserLine, Transform firePoint,
		float weaponRange)
	{
		this.turretEffects = turretEffects;
		this.laserLine = laserLine;
		this.firePoint = firePoint;
		this.weaponRange = weaponRange;
	}

	public void Shoot(Vector3 origin, Vector3 direction)
	{
		CmdShoot(origin, direction);
	}

	[Command]
	void CmdShoot(Vector3 origin, Vector3 direction)
	{
		RaycastHit hit;
		Ray ray = new Ray(origin, direction);

		Debug.DrawRay(origin, direction * weaponRange, Color.green, 0.07f);

		bool result = Physics.Raycast(ray, out hit, weaponRange);

		if (result)
		{
			var enemy = hit.transform.GetComponent<IHealth>();

			if (enemy != null)
				enemy.TakeDamage(1);
		}
		
		RpcDrawLine(result, origin, direction, hit.point);
		RpcProcessShotEffects(result, hit.point);
	}

	[ClientRpc]
	void RpcProcessShotEffects(bool playImpact, Vector3 point)
	{
		//turretEffects.PlayShotEffects();

		//if (playImpact)
		//turretEffects.PlayImpactEffect(point);
	}

	[ClientRpc]
	void RpcDrawLine(bool result, Vector3 origin, Vector3 direction, Vector3 hit)
	{
		StartCoroutine(StartDrawLine(result, origin, direction, hit));
	}

	private IEnumerator StartDrawLine(bool result, Vector3 origin, Vector3 direction, Vector3 hit)
	{
		laserLine.enabled = true;

		laserLine.SetPosition(0, firePoint.position);

		if (result)
		{
			laserLine.SetPosition(1, hit);
		}
		else
		{
			laserLine.SetPosition(1, origin + (direction * weaponRange));
		}
		yield return shotDuration;
		laserLine.enabled = false;
	}
}

public class ShieldBreakerLauncher : Ballistics, IWeapon
{
	public void Initialize(TurretWeaponEffects turretEffects, LineRenderer laserLine, Transform firePoint,
		float weaponRange)
	{
		this.turretEffects = turretEffects;
		this.laserLine = laserLine;
		this.firePoint = firePoint;
		this.weaponRange = weaponRange;
	}

	public void Shoot(Vector3 origin, Vector3 direction)
	{

	}
}