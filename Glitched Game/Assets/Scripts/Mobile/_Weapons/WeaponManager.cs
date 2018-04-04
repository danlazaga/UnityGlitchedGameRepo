using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponManager : MonoBehaviour
{
#region Variables
	[SerializeField] Transform firePoint;
	[Range(10f, 80f)]
	[SerializeField] private float angle = 45f;
	IWeapon iWeapon;
	PlayerInput playerInput;
	int currentWeaponIndex;
#endregion

#region Unity Methods
	private void Awake()
	{
		SwitchWeapon(0);

		playerInput = GetComponent<PlayerInput>();

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

		if (currentWeaponIndex >= 3)
		{
			currentWeaponIndex = 0;
		}

		SwitchWeapon(currentWeaponIndex);
	}

	void HandleFire(Vector3 destination)
	{
		iWeapon.Shoot(destination);
	}

	void SwitchWeapon(int index)
	{
		Component c = gameObject.GetComponent<IWeapon>()as Component;

		if (c != null) { Destroy(c); }

		switch (index)
		{
			case 0:
				iWeapon = gameObject.AddComponent<DefaultSpearLauncher>();
				break;

			case 1:
				iWeapon = gameObject.AddComponent<FireSpearLauncher>();
				break;

			case 2:
				iWeapon = gameObject.AddComponent<FrostSpearLauncher>();
				break;
		}

		iWeapon.Initialize(firePoint, angle);
	}
}