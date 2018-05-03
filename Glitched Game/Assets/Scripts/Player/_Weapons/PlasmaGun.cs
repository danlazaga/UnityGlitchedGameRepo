using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlasmaGun : MonoBehaviour, IGunHeatHandler
{
	public event Action<float> OnHeatChange;

#region Variables
	//[SerializeField] WeaponEffects weaponEffects;
	[Space (10)]
	[SerializeField] float maxHeat = 10f;
	[SerializeField] float coolRate = 1.1f;
	[SerializeField] float coolDownTime = 8f;
	float currentHeat;
	bool canFire = true;
#endregion

#region Unity Methods
	private void OnEnable()
	{

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

	}
#endregion

	void HandleShoot()
	{
		if (canFire)
		{
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
				OnHeatChange(currentHeat);
			}
		}
	}
}