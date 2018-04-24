﻿
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossHealth : MonoBehaviour, IHealth
{

    #region Variables
    public float maxHealth = 100f;
    private float health;


	public event Action<float> OnHPPctChanged = delegate(float f) { };
	public event Action OnDied = delegate { };


    public delegate void OnHitHPCheck();

    public event OnHitHPCheck UnlockDoubleSlam;
    public event OnHitHPCheck UnlockLaser;
    public event OnHitHPCheck UnlockMissile;

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


        if (health <= (maxHealth * 0.6))
        {
            if (UnlockDoubleSlam != null)
            {
                UnlockDoubleSlam();
            }
        }

        if (health <= (maxHealth * 0.5))
        {
            if (UnlockLaser != null)
            {
                UnlockLaser();
            }
        }

        if(health <= (maxHealth * 0.4))
        {
            if(UnlockMissile != null)
            {
                UnlockMissile();
            }
        }


        if (health <= 0)
			OnDied();

	}
}