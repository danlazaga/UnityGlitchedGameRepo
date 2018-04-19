using UnityEngine;

public interface IWeapon
{
	void Initialize(WeaponManager weaponManager);
	void Shoot();
}