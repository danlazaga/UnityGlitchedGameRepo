using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHUD : Singleton<PlayerHUD>
{
#region Variables
	[SerializeField] Text healthValue;
	[SerializeField] GameObject healthValueObj;
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

		reticule = GameObject.Find("Reticule").GetComponent<Image>();
		healthValue = GameObject.Find("HealthValue").GetComponent<Text>();
	}

#endregion

	public void Initialize()
	{
		 reticule.enabled = true;
		 healthValueObj.SetActive(true);
	}

	public void SetHealth(float value)
	{
		healthValue.text = string.Format(stringFormat, value);
	}

}