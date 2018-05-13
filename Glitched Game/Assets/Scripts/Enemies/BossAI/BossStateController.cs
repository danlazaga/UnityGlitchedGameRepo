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

    public override void Awake()
    {
        base.Awake();

        maxAttacks = 1;
        FSM.ChangeState(new BossDisableState(this));

        shieldHealth.OnDied += ReturnToIdle;
    }

    private void OnDestroy()
    {
        shieldHealth.OnDied -= ReturnToIdle;
    }


    public override void Update()
    {
        FSM.StateUpdate();
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