using UnityEngine;
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