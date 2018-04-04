using System;
using UnityEngine;

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
		Horizontal = Input.GetAxis("Horizontal");
		Vertical = Input.GetAxis("Vertical");

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