using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityStandardAssets.CrossPlatformInput;

public class WeaponManager : MonoBehaviour
{
#region Variables
	[SerializeField] WeaponLauncher[] launchers;
	IWeapon iWeapon;
	int currentWeaponIndex;
#endregion

#region Unity Methods
	private void Awake()
	{
		SwitchWeapon(0);
	}

	private void Update()
	{
		if (CrossPlatformInputManager.GetButtonDown("Fire1"))
		{
			Shoot();
		}

		if (CrossPlatformInputManager.GetButtonDown("Jump"))
		{
			HandleSwitchWeapon();
		}
	}
#endregion

#region Functions
	void HandleSwitchWeapon()
	{
		currentWeaponIndex++;

		if (currentWeaponIndex >= launchers.Length)
		{
			currentWeaponIndex = 0;
		}

		SwitchWeapon(currentWeaponIndex);
	}

	void Shoot()
	{
		iWeapon.Shoot();
	}

	void SwitchWeapon(int index)
	{
		iWeapon = launchers[index];
	}
#endregion
}