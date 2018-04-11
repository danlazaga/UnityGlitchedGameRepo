using System;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ButtonCooldownClicker : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
#region Variables
	[SerializeField] Image darkMask;
	[SerializeField] Text coolDownTextDisplay;
	[SerializeField] float coolDownDuration;
	private float nextReadyTime;
	private float coolDownTimeLeft;
	bool pointerDown;
	public event Action OnInteract;
	public event Action OnInteractUp;

#endregion

#region Unity Methods
	void Update()
	{
		bool coolDownComplete = (Time.time > nextReadyTime);

		if (coolDownComplete)
		{
			AbilityReady();
			if (pointerDown)
			{
				ButtonTriggered();
			}
		}
		else
		{
			CoolDown();
		}
	}

	public void OnPointerDown(PointerEventData eventData)
	{
		pointerDown = true;
	}

	public void OnPointerUp(PointerEventData eventData)
	{
		pointerDown = false;
		if(OnInteractUp != null) OnInteractUp();
	}
#endregion

	void AbilityReady()
	{
		coolDownTextDisplay.enabled = false;
		darkMask.enabled = false;
	}

	void CoolDown()
	{
		pointerDown = false;
		coolDownTimeLeft -= Time.deltaTime;
		float roundedCd = Mathf.Round(coolDownTimeLeft);
		coolDownTextDisplay.text = roundedCd.ToString();
		darkMask.fillAmount = (coolDownTimeLeft / coolDownDuration);
	}

	private void ButtonTriggered()
	{
		nextReadyTime = coolDownDuration + Time.time;
		coolDownTimeLeft = coolDownDuration;
		darkMask.enabled = true;
		coolDownTextDisplay.enabled = true;

		OnClick();
	}

	public void OnClick()
	{
		if(OnInteract!= null) OnInteract();
	}
}