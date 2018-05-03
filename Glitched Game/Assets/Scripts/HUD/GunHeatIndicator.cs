using System;
using UnityEngine;
using UnityEngine.UI;

public class GunHeatIndicator : MonoBehaviour
{
	[SerializeField] Slider HeatBar;
	IGunHeatHandler iGunHeatHandler;

	private void OnEnable()
	{
		iGunHeatHandler = GetComponentInParent<IGunHeatHandler>();

		iGunHeatHandler.OnHeatChange += HandleHUD;
	}

	private void OnDisable()
	{
		iGunHeatHandler.OnHeatChange -= HandleHUD;
	}

    private void HandleHUD(float value)
    {
        HeatBar.value = value;
    }
}