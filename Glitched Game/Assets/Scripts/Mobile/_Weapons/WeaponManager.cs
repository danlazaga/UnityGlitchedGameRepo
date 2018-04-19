using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityStandardAssets.CrossPlatformInput;

[RequireComponent(typeof(TurretController))]
public class WeaponManager : MonoBehaviour
{
#region Variables
	IWeapon iWeapon;
	TurretController turretController;
	DefaultLauncher defaultLauncher;
	ShieldBreakerLauncher shieldBreakerLauncher;
	int currentWeaponIndex;
#endregion

#region Unity Methods
	private void Awake()
	{
		defaultLauncher = gameObject.GetRequiredComponent<DefaultLauncher>();
		shieldBreakerLauncher = gameObject.GetRequiredComponent<ShieldBreakerLauncher>();
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

		if (currentWeaponIndex >= 2)
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
		switch (index)
		{
			case 0:
				iWeapon = defaultLauncher;
				break;

			case 1:
				iWeapon = shieldBreakerLauncher;
				break;
		}
	}
}