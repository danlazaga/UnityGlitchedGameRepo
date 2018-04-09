using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

public class PlayerInput : MonoBehaviour
{
#region Variables
	public float Horizontal { get; private set; }
	public float Vertical { get; private set; }

	public event Action<Vector3> OnFire = delegate(Vector3 v) { };
	public event Action OnSwitchWeapon = delegate { };
#endregion

#region Unity Methods	
	void Update()
	{
		Horizontal = CrossPlatformInputManager.GetAxis("Horizontal");
		Vertical = CrossPlatformInputManager.GetAxis("Vertical");

		if (Input.GetButtonDown("Fire1"))
		{
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

			RaycastHit hitInfo;

			if (Physics.Raycast(ray, out hitInfo))
			{
				if (OnFire != null) { OnFire(hitInfo.point); }
			}
		}

		if(Input.GetButtonDown("Jump"))
		{
			if(OnSwitchWeapon != null) OnSwitchWeapon();
		}
	}
#endregion
}