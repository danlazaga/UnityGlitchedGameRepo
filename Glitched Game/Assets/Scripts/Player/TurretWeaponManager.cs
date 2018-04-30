using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityStandardAssets.CrossPlatformInput;

[RequireComponent(typeof(TurretController))]
public class TurretWeaponManager : MonoBehaviour
{
#region Variables
	[SerializeField] WeaponLauncher[] launchers;
	TurretController turretController;
	IWeapon iWeapon;
	int currentWeaponIndex;
#endregion

#region Unity Methods
	private void Awake()
	{
		turretController = GetComponent<TurretController>();
		turretController.onFire += HandleFire;
		turretController.onSwitchWeaon += HandleSwitchWeapon;
		SwitchWeapon(0);
	}

	private void OnDestroy()
	{
		turretController.onFire -= HandleFire;
		turretController.onSwitchWeaon -= HandleSwitchWeapon;
	}

#endregion

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
		PlayerHUD.Instance.PlayRecticle();
	}



	void SwitchWeapon(int index)
	{
		iWeapon = launchers[index];
	}

}