using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossStateController : StateController
{
    //public delegate void OnShield();
    //public event OnShield ShieldMode;

    //attack counter
    [HideInInspector]public int attacks;

    //attack pool/max index
    public int maxAttacks { get; set; }
    public bool hasShield { get; set; }

    public override void Awake()
    {
        base.Awake();

      
        maxAttacks = 1;
        FSM.ChangeState(new BossDisableState(this));
    }

  
    public override void Update()
    {
        FSM.StateUpdate();
    }

  
    //public void OnShieldEvent()
    //{
    //    if(ShieldMode != null)
    //    {
    //        ShieldMode();
    //    }
    //}
}