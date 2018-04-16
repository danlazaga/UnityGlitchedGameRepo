using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

[RequireComponent(typeof(TurretController))]
public class WeaponManager : MonoBehaviour
{
#region Variables
	[SerializeField] float weaponRange;
	[SerializeField] Transform firePoint;
	[Space(10)]
	[SerializeField] TurretWeaponEffects turretEffects;
	[SerializeField] LineRenderer laserLine;
	[SerializeField] Camera fpsCam;
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
		Vector3 rayOrigin = fpsCam.ViewportToWorldPoint(new Vector3(0.5f, 0.5f, 0.0f));
		iWeapon.Shoot(rayOrigin, fpsCam.transform.forward);
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

		iWeapon.Initialize(turretEffects, laserLine, firePoint, weaponRange);
	}
}