using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

public class PlayerInput : MonoBehaviour
{
#region Variables
	public float Horizontal { get; private set; }
	public float Vertical { get; private set; }

	public event Action OnFire = delegate { };
	public event Action OnSwitchWeapon = delegate { };
#endregion

#region Unity Methods	
	void Update()
	{
		Horizontal = CrossPlatformInputManager.GetAxis("Horizontal");
		Vertical = CrossPlatformInputManager.GetAxis("Vertical");

		if (CrossPlatformInputManager.GetButtonDown("Fire1"))
		{
			Debug.Log("Fire");
			if(OnFire != null) OnFire();
		}

		if(CrossPlatformInputManager.GetButtonDown("Switch"))
		{
			Debug.Log("Switch Weapon");
			if(OnSwitchWeapon != null) OnSwitchWeapon();
		}

	}
#endregion
}