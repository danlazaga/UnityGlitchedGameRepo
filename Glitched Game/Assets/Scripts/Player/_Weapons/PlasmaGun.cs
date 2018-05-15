using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlasmaGun : MonoBehaviour, IGunHeatHandler
{
	public event Action<float> OnHeatChange;

#region Variables
	[SerializeField] LayerMask layer;
	[SerializeField] GameObject controllerLeft;
	[Space(10)]
	[SerializeField] Transform firePoint;
	[SerializeField] GunEffects weaponEffects;

	[Space(10)]
	[SerializeField] float weaponRange = 20f;
	[SerializeField] float maxHeat = 10f;
	[SerializeField] float coolRate = 1.1f;
	[SerializeField] float coolDownTime = 8f;
	[SerializeField] float gunDamage = 100f;
	[SerializeField] float stunDuration = 1f;
	float currentHeat;
	bool canFire = true;

	SteamVR_TrackedController controller;
	SteamVR_TrackedObject trackedObj;
	SteamVR_Controller.Device device;
#endregion

#region Unity Methods

	private void Awake()
	{
		controller = controllerLeft.GetComponent<SteamVR_TrackedController>();
		controller.TriggerClicked += HandleShoot;
		trackedObj = controllerLeft.GetComponent<SteamVR_TrackedObject>();
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
		Debug.DrawRay(firePoint.position, firePoint.forward * weaponRange, Color.green);
		bool result = Physics.Raycast(ray, out hit, weaponRange, layer);

		device = SteamVR_Controller.Input((int)trackedObj.index);
		device.TriggerHapticPulse(500);

		if (result)
		{
			var enemyHealth = hit.transform.GetComponent<IHealthHandler>();

			if (enemyHealth != null)
			{
				enemyHealth.TakeDamage(gunDamage);
			}

			var enemyStun = hit.transform.GetComponent<IStunHandler>();

			if(enemyStun != null)
			{
				enemyStun.TakeStun(stunDuration);
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
				if (OnHeatChange != null)
				{
					OnHeatChange(currentHeat);
				}
			}
		}
	}
}