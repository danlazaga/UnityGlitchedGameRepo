using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHUD : Singleton<PlayerHUD>
{
#region Variables
	[Header("HTC HUD Properties")]
	[SerializeField] UIFader htcDamageImage;
	[SerializeField] Image htcGateHealthBar;
	[SerializeField] Image htcHealthBar;

	[Header("Mobile HUD Properties")]
	[SerializeField] UIFader mobileDamageImage;
	[SerializeField] RecticleAnimation recticleAnimation;
	[SerializeField] Image mobileGateHealthBar;
	[SerializeField] Image mobileHtcHealthBar;
	[Space(10)]
	[SerializeField] GameObject mobileControllerObj;
	[SerializeField] GameObject mobilePlayerHUD;
	[SerializeField] GameObject htcHUD;
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
		mobileDamageImage = GameObject.Find("DamageImage").GetComponent<UIFader>();
		mobileGateHealthBar = GameObject.Find("HealthForegound").GetComponent<Image>();
		mobileHtcHealthBar = GameObject.Find("HTCHealthBar").GetComponent<Image>();
	}

#endregion

	public void Initialize()
	{
#if UNITY_ANDROID || UNITY_IOS
		mobileControllerObj.SetActive(true);
		mobilePlayerHUD.SetActive(true);
#else
		htcHUD.SetActive(true);
#endif
	}

	public void SetGateHealth(float value)
	{
		float lerpedValue = (((value - 0)* 1 / 100)+ 0);

#if UNITY_ANDROID || UNITY_IOS
		mobileGateHealthBar.fillAmount = lerpedValue;
#else
		htcGateHealthBar.fillAmount = lerpedValue;
#endif
	}

	public void SetHTCHealth(float value)
	{
		float lerpedValue = (((value - 0)* 1 / 100)+ 0);
	

#if UNITY_ANDROID || UNITY_IOS
		mobileHtcHealthBar.fillAmount = lerpedValue;
#else
		htcHealthBar.fillAmount = lerpedValue;
#endif

	}

	public void FlashDamageEffect()
	{
#if UNITY_ANDROID || UNITY_IOS
		mobileDamageImage.Flash();
#else
		htcDamageImage.Flash();
#endif
	}

	public void PlayRecticle()
	{
		recticleAnimation.RecticlePlay();
	}
}