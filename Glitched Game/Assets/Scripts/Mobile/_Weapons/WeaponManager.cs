using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityStandardAssets.CrossPlatformInput;

[RequireComponent(typeof(TurretController))]
public class WeaponManager : MonoBehaviour
{
#region Variables
	public float weaponRange;
	public Transform firePoint;
	[Space(10)]
	public TurretWeaponEffects turretEffects;
	public LineRenderer laserLine;
	public Camera fpsCam;
	IWeapon iWeapon;
	TurretController turretController;
	int currentWeaponIndex;
#endregion

#region Unity Methods
	private void Awake()
	{
		SwitchWeapon(0);
		turretController = gameObject.GetRequiredComponent<TurretController>();
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

	void SwitchWeapon(int index)
	{
		Component c = gameObject.GetComponent<IWeapon>()as Component;

		if (c != null) { Destroy(c); }

		switch (index)
		{
			case 0:
				iWeapon = gameObject.AddComponent<DefaultLauncher>();
				break;

			case 1:
				iWeapon = gameObject.AddComponent<ShieldBreakerLauncher>();
				break;
		}

		iWeapon.Initialize(this);
	}
}