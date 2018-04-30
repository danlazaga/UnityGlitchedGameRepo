using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyStateController : StateController
{
    public Transform player{get;set;}
    public Transform gate{get;set;}

    // testing bool if boss has shield
    public BossStateController Boss { get; set; }

    private void Start()
    {
        Boss = FindObjectOfType<BossStateController>();
        FSM.ChangeState(new EnemyChasePState(this));
    }

    public override void Update()
    {
        FSM.StateUpdate();      
    }

    public void SetTargets(Transform player, Transform gate)
    {
        this.player = player;
        this.gate =  gate;
    }


}
