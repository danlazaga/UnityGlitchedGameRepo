using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GunHeatIndicator : MonoBehaviour
{
	[SerializeField] Image HeatBar;
	IGunHeatHandler iGunHeatHandler;

	private void OnEnable()
	{
		iGunHeatHandler = GetComponent<IGunHeatHandler>();

		iGunHeatHandler.OnHeatChange += HandleHUD;
	}

	private void OnDisable()
	{
		iGunHeatHandler.OnHeatChange -= HandleHUD;
	}

    private void HandleHUD(float value)
    {
		var newValue =  (value / iGunHeatHandler.MaxHeat) * 100f;
        HeatBar.fillAmount = value;
    }
}