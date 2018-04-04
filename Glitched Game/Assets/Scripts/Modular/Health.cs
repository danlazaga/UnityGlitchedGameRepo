using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Health : MonoBehaviour, IHealth
{

#region Variables
	[SerializeField] private int healthInHits = 100;
	public event Action<float> OnHPPctChanged = delegate(float f) { };
	public event Action OnDied = delegate { };
#endregion

#region Unity Methods
	private void Start()
	{
		OnHPPctChanged(healthInHits);
	}
#endregion

	public void TakeDamage(int amount)
	{
		healthInHits -= amount;

		OnHPPctChanged(healthInHits);

		if (healthInHits <= 0)
			OnDied();

	}
}