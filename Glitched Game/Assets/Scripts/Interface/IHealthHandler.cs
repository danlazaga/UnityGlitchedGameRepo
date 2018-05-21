using System;
using UnityEngine;

public interface IHealthHandler
{
	event Action<float> OnHPPctChanged;
	event Action OnDied;
	bool TakeDamage(float amount);
}