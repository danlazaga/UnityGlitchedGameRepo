using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossStateController : StateController
{
    [Header("Testing Variables")]
    public float idleTime;
    public float maxIdleTime;
    public bool idleMode;

    // attack counter
    public int attacks;
    //attack pool/max index
    public int maxAttacks;
    public bool hasShield;
 
    // Attacks
    public GameObject laserAttack;
    public GameObject bulletRain;

    private Health bossHealth;

    private void Start()
    {
        bossHealth = GetComponent<Health>();

        bossHealth.UnlockDoubleSlam += UnlockDoubleSlamAttack;
        bossHealth.UnlockLaser += UnlockLaserAttack;
        bossHealth.UnlockMissile += UnlockMissileAttack;

        maxAttacks = 1;
        FSM.ChangeState(new BossDisableState(this));
    }

    public override void Update()
    {
        FSM.StateUpdate();
    }

   
    void UnlockDoubleSlamAttack()
    {
        //onDoubleSlam = true; 
        Debug.Log("Unlock DoubleSlam");
        maxAttacks = 2;
        bossHealth.UnlockDoubleSlam -= UnlockDoubleSlamAttack;
       

    }

    void UnlockLaserAttack()
    {
        // onLaserAttack = true;
        Debug.Log("Unlock Laser Attack");
        maxAttacks = 3;
        bossHealth.UnlockLaser -= UnlockLaserAttack;
    }

    void UnlockMissileAttack()
    {
        Debug.Log("Unlock Laser Attack");
        maxAttacks = 4;
        bossHealth.UnlockMissile -= UnlockMissileAttack;

    }
}
