using System;
using UnityEngine;

public interface IHealth
{
	event Action<float> OnHPPctChanged;
	event Action OnDied;
	void TakeDamage(float amount);
}