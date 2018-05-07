using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossStateController : StateController
{
    //public delegate void OnShield();
    //public event OnShield ShieldMode;

    public delegate void LaunchMissile(Transform target);
    public delegate void LaunchLaser();

   
 
    //attack counter
    public int attacks;

    //attack pool/max index
    public int maxAttacks;
    public bool hasShield;

    // Attacks
    public GameObject laserAttack;
    public GameObject bulletRain;

    private BossHealth bossHealth;

    public override void Awake()
    {
        base.Awake();

        bossHealth = GetComponent<BossHealth>();

        bossHealth.UnlockDoubleSlam += UnlockDoubleSlamAttack;
        bossHealth.UnlockLaser += UnlockLaserAttack;
        bossHealth.UnlockMissile += UnlockMissileAttack;

        maxAttacks = 1;
        FSM.ChangeState(new BossDisableState(this));
    }

    private void OnDestroy()
    {
        bossHealth.UnlockDoubleSlam -= UnlockDoubleSlamAttack;
        bossHealth.UnlockLaser -= UnlockLaserAttack;
        bossHealth.UnlockMissile -= UnlockMissileAttack;
    }

    public override void Update()
    {
        FSM.StateUpdate();
    }

    void UnlockDoubleSlamAttack()
    {
        
        Debug.Log("Unlock DoubleSlam");
        maxAttacks = 2;
        bossHealth.UnlockDoubleSlam -= UnlockDoubleSlamAttack;

    }

    void UnlockLaserAttack()
    {
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

    //public void OnShieldEvent()
    //{
    //    if(ShieldMode != null)
    //    {
    //        ShieldMode();
    //    }
    //}
}