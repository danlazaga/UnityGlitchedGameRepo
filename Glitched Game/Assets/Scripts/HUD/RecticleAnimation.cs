using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RecticleAnimation : MonoBehaviour
{
	[SerializeField] Animator reticleAnimator;

	public void RecticlePlay()
	{
		reticleAnimator.SetTrigger("Play");
	}
	
}