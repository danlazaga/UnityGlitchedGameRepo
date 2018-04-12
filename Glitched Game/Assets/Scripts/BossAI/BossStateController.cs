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
   // public GameObject[] slamAttacks;
    public GameObject laserAttack;
    public GameObject bulletRain;


    //public bool onDoubleSlam;
    //public bool onLaserAttack;

    private Health bossHealth;

    private void Start()
    {
        bossHealth = GetComponent<Health>();

        bossHealth.UnlockDoubleSlam += UnlockDoubleSlam;
        bossHealth.UnlockLaser += UnlockLaserAttack;

        maxAttacks = 1;
        FSM.ChangeState(new BossDisableState(this));
    }

    public override void Update()
    {
        FSM.StateUpdate();

      
    }

    // check health script, if health is less than 60%
    //public bool OnRageMode()
    // {
    //    if(health <= 60f && health >= 51f)
    //    {
    //         return true;

    //    }
    //    else if (health <= 50f)
    //     {
    //         return true;
    //     }

    //     return false;
    // }


    void UnlockDoubleSlam()
    {
        //onDoubleSlam = true; 
        Debug.Log("Unlock DoubleSlam");
        maxAttacks = 2;
        bossHealth.UnlockDoubleSlam -= UnlockDoubleSlam;
       

    }

    void UnlockLaserAttack()
    {
        // onLaserAttack = true;
        Debug.Log("Unlock Laser Attack");
        maxAttacks = 3;
        bossHealth.UnlockLaser -= UnlockLaserAttack;
    }
}
