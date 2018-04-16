using UnityEngine;

public interface IWeapon
{
	void Initialize(TurretWeaponEffects turretEffects, LineRenderer laserLine, Transform firePoint, float weaponRange);
	void Shoot(Vector3 origin, Vector3 direction);
}