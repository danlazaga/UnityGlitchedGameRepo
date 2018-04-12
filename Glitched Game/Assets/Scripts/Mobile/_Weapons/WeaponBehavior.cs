using UnityEngine;

public class WeaponBehavior { }

public abstract class Ballistics : MonoBehaviour
{
	protected Transform firePoint;
}

public class DefaultBullet : Ballistics, IWeapon
{

	public void Initialize(Transform firePoint)
	{
		this.firePoint = firePoint;
	}

	public void Shoot()
	{

	}
}

public class ShieldBreakerBullet : Ballistics, IWeapon
{
	public void Initialize(Transform firePoint)
	{
		this.firePoint = firePoint;
	}

	public void Shoot()
	{

	}
}