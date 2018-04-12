using System;
using UnityEngine;

public interface IHealthHandler
{
	event Action<float> OnHPPctChanged;
	event Action OnDied;
	void TakeDamage(int damage);
}