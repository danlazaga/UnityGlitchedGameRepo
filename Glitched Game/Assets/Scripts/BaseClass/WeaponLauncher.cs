using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

public abstract class WeaponLauncher : NetworkBehaviour
{

	[SerializeField] protected TurretWeaponEffects turretEffects;
	[SerializeField] protected Transform firePoint;
}