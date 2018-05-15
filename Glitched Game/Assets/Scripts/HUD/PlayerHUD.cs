﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHUD : Singleton<PlayerHUD>
{
#region Variables
	[SerializeField] RecticleAnimation recticleAnimation;
	[SerializeField] UIFader damageImage;
	[SerializeField] Image healthBar;
	[SerializeField] Image reticule;
	[Space(10)]
	[SerializeField] GameObject mobileControllerObj;
	[SerializeField] GameObject mobilePlayerHUD;
#endregion

#region Unity Methods

	private void Awake()
	{
		if (instance == null)
		{
			instance = this;
		}
		else if (instance != this)
		{
			Destroy(gameObject);
		}
	}

	public override void Reset()
	{
		base.Reset();
		recticleAnimation = GameObject.Find("Reticule").GetComponent<RecticleAnimation>();
		damageImage = GameObject.Find("DamageImage").GetComponent<UIFader>();
		reticule = GameObject.Find("Reticule").GetComponent<Image>();
		healthBar = GameObject.Find("HealthForegound").GetComponent<Image>();
	}

#endregion

	public void Initialize()
	{
#if UNITY_ANDROID || UNITY_IOS
		reticule.enabled = true;
		mobileControllerObj.SetActive(true);
		mobilePlayerHUD.SetActive(true);
#endif
	}

	public void SetGateHealth(float value)
	{
		float lerpedValue = (((value - 0)* 1 / 100)+ 0);
		healthBar.fillAmount = lerpedValue;
	}

	public void SetHTCHealth(float value)
	{
		float lerpedValue = (((value - 0)* 1 / 100)+ 0);
	}

	public void FlashDamageEffect()
	{
		damageImage.Flash();
	}

	public void PlayRecticle()
	{
		recticleAnimation.RecticlePlay();
	}
}