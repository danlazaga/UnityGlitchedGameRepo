using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurretWeaponEffects : MonoBehaviour
{
#region Variables
	[SerializeField] ParticleSystem muzzleFlash;
	[SerializeField] AudioSource weaponAudio;
#endregion

	public void PlayShotEffects()
	{
		muzzleFlash.Stop(true);
		muzzleFlash.Play(true);
		
		SoundManager.Instance.PlayShot(weaponAudio);
	}
}