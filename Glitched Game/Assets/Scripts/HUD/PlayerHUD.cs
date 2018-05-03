using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHUD : Singleton<PlayerHUD>
{
#region Variables
	[SerializeField] RecticleAnimation recticleAnimation; 
	[SerializeField] UIFader damageImage;
	[SerializeField] Text healthValue;
	[SerializeField] RectTransform healthBar;
	[SerializeField] GameObject healthValueObj;
	[SerializeField] GameObject healthBarObj;
	[SerializeField] GameObject mobileControllerObj;
	[SerializeField] Image reticule;
	string stringFormat = "{0:#,###0}";
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

	public override	void Reset()
	{
		base.Reset();
		recticleAnimation = GameObject.Find("Reticule").GetComponent<RecticleAnimation>();
		damageImage = GameObject.Find("DamageImage").GetComponent<UIFader>();
		reticule = GameObject.Find("Reticule").GetComponent<Image>();
		healthValue = GameObject.Find("HealthValue").GetComponent<Text>();
		healthBar = GameObject.Find("HealthForegound").GetComponent<RectTransform>();
	}

#endregion

	public void Initialize()
	{
		reticule.enabled = true;
		healthValueObj.SetActive(true);
		healthBarObj.SetActive(true);
		 
#if UNITY_ANDROID || UNITY_IOS
		mobileControllerObj.SetActive(true);
#endif
	}

	public void SetHealth(float value)
	{
		healthValue.text = string.Format(stringFormat, value);
		healthBar.sizeDelta = new Vector2 (value, healthBar.sizeDelta.y);
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

