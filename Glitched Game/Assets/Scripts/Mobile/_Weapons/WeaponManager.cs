using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(TurretController))]
public class WeaponManager : MonoBehaviour
{
#region Variables
	[SerializeField] float fireForce = 6f;
	[SerializeField] Transform firePoint;
	[Space(10)]
	[SerializeField] TurretWeaponEffects turretEffects;
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
			turretController.OnFire += HandleFire;
			turretController.OnSwitchWeapon += HandleSwitchWeapon;
		}
	}

	private void OnDestroy()
	{
		turretController.OnFire -= HandleFire;
		turretController.OnSwitchWeapon -= HandleSwitchWeapon;
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

		iWeapon.Initialize(turretEffects, firePoint, fireForce);
	}
}