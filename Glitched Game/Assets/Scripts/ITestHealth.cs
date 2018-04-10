using System;
using UnityEngine;

public interface ITestHealth
{
	
	event Action OnBossDied;
	void TakeDamage(int damage);
}

