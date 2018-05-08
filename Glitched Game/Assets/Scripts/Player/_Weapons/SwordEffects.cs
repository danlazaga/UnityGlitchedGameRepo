using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(WeaponTrail))]
public class SwordEffects : MonoBehaviour
{
	[SerializeField] WeaponTrail weaponTrail;
	[SerializeField] ParticleSystem impactParticles;

	public void PlayImpact()
	{
		impactParticles.Play();
	}

	void Update()
	{
		weaponTrail.Iterate(Time.time);
		weaponTrail.UpdateTrail(Time.time, 0f);
	}
}