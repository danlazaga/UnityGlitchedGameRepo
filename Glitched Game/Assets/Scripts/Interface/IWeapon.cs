using UnityEngine;


public interface IWeapon
{
	void Initialize(Transform firePoint, float angle);
	void Shoot(Vector3 destination);
}
