using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(WeaponTrail))]
public class SwordEffects : MonoBehaviour
{
	[SerializeField] WeaponTrail weaponTrail;
	[SerializeField] WeaponTrail refractionTrail;
	[SerializeField] ParticleSystem impactParticles;

	public void PlayImpact()
	{
		impactParticles.Play();
	}

	private void Start()
	{
		UpdateManager.Instance.toUpdate += HandleUpdate;
	}

	private void OnDestroy()
	{
		UpdateManager.Instance.toUpdate -= HandleUpdate;
	}

	void HandleUpdate()
	{
		// Debug.Log("Sword Effects");
		weaponTrail.Iterate(Time.time);
		refractionTrail.Iterate(Time.time);
		weaponTrail.UpdateTrail(Time.time, 0f);
		refractionTrail.UpdateTrail(Time.time, 0f);
	}
}