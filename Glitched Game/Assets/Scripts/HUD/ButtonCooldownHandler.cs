using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

[RequireComponent(typeof(ButtonCooldownClicker))]
public class ButtonCooldownHandler : MonoBehaviour
{
#region Variables
	public string Name;
	ButtonCooldownClicker buttonCooldownClicker;
#endregion

#region Unity Methods
	private void Awake()
	{
		buttonCooldownClicker = GetComponent<ButtonCooldownClicker>();

		if(buttonCooldownClicker != null)
		{
			buttonCooldownClicker.OnInteract += SetDownState;
			buttonCooldownClicker.OnInteractUp += SetUpState;
		}
	}
#endregion

	public void SetDownState()
	{
		CrossPlatformInputManager.SetButtonDown(Name);
	}

	public void SetUpState()
	{
		CrossPlatformInputManager.SetButtonUp(Name);
	}
}