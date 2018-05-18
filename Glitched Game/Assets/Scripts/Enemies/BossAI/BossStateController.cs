using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossStateController : StateController
{
    //public delegate void OnShield();
    //public event OnShield ShieldMode;
    [SerializeField] private ShieldHealth shieldHealth;
    //attack counter
    public int attacks { get; set; }

    //attack pool/max index
    public int maxAttacks { get; set; }
    public bool hasShield { get; set; }

    public bool testMode;

    public ShieldHealth ShieldHealth
    {
        get
        {
            return shieldHealth;
        }

    }

    public override void Awake()
    {
        base.Awake();

        maxAttacks = 1;
        if (testMode)
            maxAttacks = 4;

        FSM.ChangeState(new BossDisableState(this));
        shieldHealth.OnDied += ReturnToIdle;
        if(GetComponent<IHealthHandler>() != null)
            GetComponent<IHealthHandler>().OnDied += HandleBossDeath;
    }

    private void OnDestroy()
    {
        shieldHealth.OnDied -= ReturnToIdle;
        GetComponent<IHealthHandler>().OnDied -= HandleBossDeath;
    }


    public override void HandleUpdate()
    {
        FSM.StateUpdate();
    }


    public void HandleBossDeath()
    {
        FSM.ChangeState(new BossDeathState(this));
    }

    // return to idle if shield Breaks
    public void ReturnToIdle()
    {
        FSM.ChangeState(new BossIdleState(this));
    }

  
    //public void OnShieldEvent()
    //{
    //    if(ShieldMode != null)
    //    {
    //        ShieldMode();
    //    }
    //}
}