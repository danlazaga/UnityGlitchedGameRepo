﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActorMesh : MonoBehaviour
{
	[SerializeField] Renderer rendererActor;
	WaitForSeconds delay1 = new WaitForSeconds(0.3f);

	private readonly int materialGlow = Shader.PropertyToID("_GlowToggle");
	private readonly int materialHit = Shader.PropertyToID("_DamageorStun");

	private void Awake()
	{
		if (GetComponentInParent<IHealthHandler>()!= null)
		{
			GetComponentInParent<IHealthHandler>().OnHPPctChanged += HandleHitMesh;
		}

		if (GetComponentInParent<IStunHandler>()!= null)
		{
			GetComponentInParent<IStunHandler>().OnStun += HandleStunMesh;
		}
	}

	private void OnDisable()
	{
		rendererActor.material.SetFloat(materialGlow, 0);
	}

	private void HandleHitMesh(float value)
	{
		
		if (value > 1000)
			StartCoroutine(PlayHitMesh());

	}

	public void HandleStunMesh(float value)
	{
		if (value < 1000)
			StartCoroutine(StunHitMesh());

	}

	IEnumerator PlayHitMesh()
	{
		
		rendererActor.material.SetFloat(materialHit, 0);
		rendererActor.material.SetFloat(materialGlow, 1);
		yield return delay1;
		rendererActor.material.SetFloat(materialGlow, 0);
	}

	IEnumerator StunHitMesh()
	{
		rendererActor.material.SetFloat(materialHit, 1);
		rendererActor.material.SetFloat(materialGlow, 1);
		yield return delay1;
		rendererActor.material.SetFloat(materialGlow, 0);
	}
}