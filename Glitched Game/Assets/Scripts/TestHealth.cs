using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestHealth : MonoBehaviour, ITestHealth
{

    public int maxHealth = 100;
    public int health; // revert to private after  AI prototype

	public event Action OnBossDied = delegate { };

    public delegate void OnHitHPCheck();

    public event OnHitHPCheck UnlockDoubleSlam;
    public event OnHitHPCheck UnlockLaser;


	public void TakeDamage(int damage)
	{

        health -= damage;
		if (health <= 0)
        {
            OnBossDied();
        }

        if(health <= (maxHealth * 0.6))
        {
            if(UnlockDoubleSlam != null)
            {
                UnlockDoubleSlam();
            }
        }

        if(health <= (maxHealth * 0.5))
        {
            if (UnlockLaser != null)
            {
                UnlockLaser();
            }
        }


    }

    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            TakeDamage(10);
        }
    }


}