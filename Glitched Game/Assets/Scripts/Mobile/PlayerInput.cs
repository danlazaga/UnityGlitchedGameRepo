using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;
using UnityEngine.Networking;

public class PlayerInput : NetworkBehaviour
{
#region Variables
	public float Horizontal { get; private set; }
	public float Vertical { get; private set; }

	public event Action OnFire = delegate { };
	public event Action OnSwitchWeapon = delegate { };
#endregion

#region Unity Methods	

	public override void OnStartLocalPlayer ()
	{
		GetComponentInChildren<MeshRenderer> ().material.color = Color.green;
	}

	void Update()
	{
		if(!isLocalPlayer) return;

		Horizontal = CrossPlatformInputManager.GetAxis("Horizontal");
		Vertical = CrossPlatformInputManager.GetAxis("Vertical");

		if (CrossPlatformInputManager.GetButtonDown("Fire1"))
		{
			if (OnFire != null)OnFire();
		}

		if (CrossPlatformInputManager.GetButtonDown("Switch"))
		{
			if (OnSwitchWeapon != null)OnSwitchWeapon();
		}

	}
#endregion
}