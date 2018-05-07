
using System;
using UnityEngine;

public interface IStunHandler  
{
	event Action<float> OnStun;
	void TakeStun(float duration);
}
