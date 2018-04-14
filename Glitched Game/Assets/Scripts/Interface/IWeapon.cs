using UnityEngine;


public interface IWeapon
{
	void Initialize(Transform firePoint, float fireForce);
	void Shoot();
}
