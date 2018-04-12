using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponManager : MonoBehaviour
{
#region Variables
	[SerializeField] Transform firePoint;
	IWeapon iWeapon;
	PlayerInput playerInput;
	int currentWeaponIndex;
#endregion

#region Unity Methods
	private void Awake()
	{
		SwitchWeapon(0);

		playerInput = gameObject.GetRequiredComponent<PlayerInput>();

		if (playerInput != null)
		{
			playerInput.OnFire += HandleFire;
			playerInput.OnSwitchWeapon += HandleSwitchWeapon;
		}
	}

	private void OnDestroy()
	{
		playerInput.OnFire -= HandleFire;
		playerInput.OnSwitchWeapon -= HandleSwitchWeapon;
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
				iWeapon = gameObject.AddComponent<DefaultBullet>();
				break;

			case 1:
				iWeapon = gameObject.AddComponent<ShieldBreakerBullet>();
				break;
		}

		iWeapon.Initialize(firePoint);
	}
}