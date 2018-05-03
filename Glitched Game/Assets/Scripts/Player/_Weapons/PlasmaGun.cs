using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlasmaGun : MonoBehaviour, IGunHeatHandler
{
	public event Action<float> OnHeatChange;

#region Variables
	//[SerializeField] WeaponEffects weaponEffects;
	[SerializeField] GameObject gunHolder;
	[Space (10)]
	[SerializeField] float maxHeat = 10f;
	[SerializeField] float coolRate = 1.1f;
	[SerializeField] float coolDownTime = 8f;
	float currentHeat;
	bool canFire = true;

	SteamVR_TrackedController controller;
	SteamVR_TrackedObject trackedObject;
#endregion

#region Unity Methods
	private void Start()
	{
		controller = gunHolder.GetComponent<SteamVR_TrackedController>();
		trackedObject = gunHolder.GetComponent<SteamVR_TrackedObject>();
		
	}

	private void OnEnable()
	{
		controller.TriggerClicked += HandleShoot;
	}



    private void Update()
	{
		CurrentHeat -= Time.deltaTime * coolRate;

		if (CurrentHeat <= 0)
		{
			CurrentHeat = 0f;
			canFire = true;
		}
	}

	private void OnDisable()
	{
		controller.TriggerClicked -= HandleShoot;
	}
#endregion

   	private void HandleShoot(object sender, ClickedEventArgs e)
    {
		Shoot();
    }

	void Shoot()
	{
		if (canFire)
		{
			SteamVR_Controller.Input((int)trackedObject.index).TriggerHapticPulse(3999);
			CurrentHeat += 3;
		}

		if (CurrentHeat >= MaxHeat)
		{
			CurrentHeat = MaxHeat;
			StartCoroutine(InvokeCoolDown());
		}
	}

	IEnumerator InvokeCoolDown()
	{
		canFire = false;
		yield return new WaitForSeconds(coolDownTime);
		canFire = true;
	}

	public float MaxHeat
	{
		get { return maxHeat; }

		set
		{
			maxHeat = value;
		}
	}

	float CurrentHeat
	{
		get { return currentHeat; }

		set
		{
			if (currentHeat != value)
			{
				currentHeat = value;
				if(OnHeatChange != null)
				{
					OnHeatChange(currentHeat);
				}
			}
		}
	}
}