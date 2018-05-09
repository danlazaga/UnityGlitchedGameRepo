using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunEffects : MonoBehaviour
{
#region Variables
	[SerializeField] ParticleSystem muzzleFlash;
	[SerializeField] ParticleSystem impactFlash;
	[SerializeField] AudioSource weaponAudio;
#endregion

	public void PlayShotEffects()
	{
		Debug.Log("Player Shot Effects");
		// muzzleFlash.Stop(true);
		// muzzleFlash.Play(true);

		// SoundManager.Instance.PlayShot(weaponAudio);
	}

	public void PlayImpactEffect(Vector3 point)
	{
		Debug.Log("Player Impact Effect");
		impactFlash.transform.position = point;
		impactFlash.Stop();
		impactFlash.Play();
	}
}