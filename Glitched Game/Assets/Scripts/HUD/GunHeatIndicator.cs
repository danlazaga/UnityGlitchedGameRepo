using System;
using UnityEngine;
using UnityEngine.UI;

public class GunHeatIndicator : MonoBehaviour
{
	[SerializeField] Slider HeatBar;
	[SerializeField] Image fill;
	IGunHeatHandler iGunHeatHandler;
	Color oldColor;

	private void Start()
	{
		oldColor = fill.color;
	}

	private void OnEnable()
	{
		iGunHeatHandler = GetComponentInParent<IGunHeatHandler>();

		iGunHeatHandler.OnHeatChange += HandleHUD;
		iGunHeatHandler.OnOverHeat += OverHeatHUD;
	}

	private void OnDisable()
	{
		iGunHeatHandler.OnHeatChange -= HandleHUD;
		iGunHeatHandler.OnOverHeat -= OverHeatHUD;
	}

	private void HandleHUD(float value)
	{
		HeatBar.value = value;
	}

	private void OverHeatHUD(bool canFire)
	{
		if (canFire)
		{
			fill.color = oldColor;

		}
		else
		{
			fill.color = Color.red;
		}
	}
}