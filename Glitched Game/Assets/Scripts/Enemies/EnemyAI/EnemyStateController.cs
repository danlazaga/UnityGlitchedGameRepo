using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

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

        if(GetComponent<IHealthHandler>() != null)
        {
            GetComponent<IHealthHandler>().OnDied += MobDeath;
        }
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

    void MobDeath()
    {
        FSM.ChangeState(new EnemyDeathState(this));
    }

}