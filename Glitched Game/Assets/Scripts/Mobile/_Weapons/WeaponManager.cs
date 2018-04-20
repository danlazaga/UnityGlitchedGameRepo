using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityStandardAssets.CrossPlatformInput;

[RequireComponent(typeof(TurretController))]
public class WeaponManager : MonoBehaviour
{
#region Variables
	[SerializeField] WeaponLauncher[] launchers;
	IWeapon iWeapon;
	TurretController turretController;
	int currentWeaponIndex;
#endregion

#region Unity Methods
	private void Awake()
	{
		turretController = gameObject.GetRequiredComponent<TurretController>();
		SwitchWeapon(0);
	}

	private void OnEnable()
	{
		if (turretController != null)
		{
			turretController.OnSwitchWeapon += HandleSwitchWeapon;
			turretController.OnFire += HandleFire;
		}
	}

	private void OnDestroy()
	{
		turretController.OnSwitchWeapon -= HandleSwitchWeapon;
		turretController.OnFire -= HandleFire;
	}
#endregion

#region Callbacks
	void HandleSwitchWeapon()
	{
		currentWeaponIndex++;

		if (currentWeaponIndex >= launchers.Length)
		{
			currentWeaponIndex = 0;
		}

		SwitchWeapon(currentWeaponIndex);
	}

	void HandleFire()
	{
		iWeapon.Shoot();
	}
#endregion

	void SwitchWeapon(int index)
	{
		iWeapon = launchers[index];
	}
}