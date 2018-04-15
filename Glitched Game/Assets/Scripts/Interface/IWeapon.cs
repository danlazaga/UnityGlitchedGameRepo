using UnityEngine;


public interface IWeapon
{
	void Initialize(TurretWeaponEffects turretEffects, Transform firePoint, float fireForce);
	void Shoot();
}
