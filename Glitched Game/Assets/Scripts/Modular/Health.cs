
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Generic Health
/// </summary>
public class Health : MonoBehaviour, IHealth
{

    #region Variables
    public float maxHealth = 100f;
    private float health;


	public event Action<float> OnHPPctChanged = delegate(float f) { };
	public event Action OnDied = delegate { };

    #endregion

    #region Unity Methods
    private void Start()
	{
        health = maxHealth;
	}
#endregion

	public void TakeDamage(float damage)
	{
		

        health -= damage;
        if (health <= 0)
			OnDied();

	}
}