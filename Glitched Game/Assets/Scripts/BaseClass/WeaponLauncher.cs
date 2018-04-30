using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

public abstract class WeaponLauncher : NetworkBehaviour , IWeapon
{

	[SerializeField] protected WeaponEffects weaponEffects;
	[SerializeField] protected Transform firePoint;

    public abstract void Shoot();
}