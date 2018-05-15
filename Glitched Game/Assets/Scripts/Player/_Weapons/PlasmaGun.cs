﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public struct PlasmaGunProperties
{
	public float weaponRange;
	public float gunDamage ;
	public float stunDuration;
}

public class PlasmaGun : MonoBehaviour, IGunHeatHandler
{
	public event Action<float> OnHeatChange;

#region Variables
	[SerializeField] LayerMask layer;
	[SerializeField] GameObject controllerLeft;
	[Space(10)]
	[SerializeField] Transform firePoint;
	[SerializeField] GunEffects weaponEffects;

	[Header("Gun Properties")]
	[SerializeField] PlasmaGunProperties plasmaGunProperties;
	[Space(10)]
	[SerializeField] GunHeatProperties gunHeatProperties;
	float currentHeat;
	bool canFire = true;

	SteamVR_TrackedController controller;
	SteamVR_TrackedObject trackedObj;
	SteamVR_Controller.Device device;
#endregion

#region Unity Methods

	private void Reset()
	{
		gunHeatProperties.maxHeat = 10f;
		gunHeatProperties.coolRate = 1.1f;
		gunHeatProperties.coolDownTime = 8f;
		plasmaGunProperties.weaponRange = 20f;
		plasmaGunProperties.gunDamage = 100f;
		plasmaGunProperties.stunDuration = 1f;
	}

	private void Awake()
	{
		controller = controllerLeft.GetComponent<SteamVR_TrackedController>();
		controller.TriggerClicked += HandleShoot;
		trackedObj = controllerLeft.GetComponent<SteamVR_TrackedObject>();
	}

	private void Update()
	{
		CurrentHeat -= Time.deltaTime * gunHeatProperties.coolRate;

		if (CurrentHeat <= 0)
		{
			CurrentHeat = 0f;
			canFire = true;
		}

	}

	private void OnDestroy()
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

		}

		RaycastHit hit;
		Ray ray = new Ray(firePoint.position, firePoint.forward);
		Debug.DrawRay(firePoint.position, firePoint.forward * plasmaGunProperties.weaponRange, Color.green);
		bool result = Physics.Raycast(ray, out hit, plasmaGunProperties.weaponRange, layer);

		device = SteamVR_Controller.Input((int)trackedObj.index);
		device.TriggerHapticPulse(500);

		if (result)
		{
			var enemyHealth = hit.transform.GetComponent<IHealthHandler>();

			if (enemyHealth != null)
			{
				enemyHealth.TakeDamage(plasmaGunProperties.gunDamage);
			}

			var enemyStun = hit.transform.GetComponent<IStunHandler>();

			if (enemyStun != null)
			{
				enemyStun.TakeStun(plasmaGunProperties.stunDuration);
			}
		}

		CurrentHeat += 3;

		ProcessShotEffects(result, hit.point);

		if (CurrentHeat >= MaxHeat)
		{
			CurrentHeat = MaxHeat;
			StartCoroutine(InvokeCoolDown());
		}
	}

	void ProcessShotEffects(bool playImpact, Vector3 point)
	{
		weaponEffects.PlayShotEffects();

		if (playImpact)
			weaponEffects.PlayImpactEffect(point);
	}

	IEnumerator InvokeCoolDown()
	{
		canFire = false;
		yield return new WaitForSeconds(gunHeatProperties.coolDownTime);
		canFire = true;
	}

	public float MaxHeat
	{
		get { return gunHeatProperties.maxHeat; }

		set
		{
			gunHeatProperties.maxHeat = value;
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
				if (OnHeatChange != null)
				{
					OnHeatChange(currentHeat);
				}
			}
		}
	}
}