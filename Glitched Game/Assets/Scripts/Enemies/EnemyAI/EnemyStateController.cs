﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Networking;

[RequireComponent(typeof(NavMeshAgent))]
public class EnemyStateController : StateController
{

    private NavMeshAgent navAgent;
    public NavMeshAgent NavAgent
    {
        get
        {
            return navAgent;
        }

        set
        {
            navAgent = value;
        }
    }
    public Transform player { get; set; }
    public Transform gate { get; set; }

    public BossStateController Boss { get; set; }

    private void OnEnable()
    {
        navAgent = GetComponent<NavMeshAgent>();
        Boss = FindObjectOfType<BossStateController>();
        FSM.ChangeState(new EnemyChasePState(this));

        if (GetComponent<IHealthHandler>() != null)
        {
            GetComponent<IHealthHandler>().OnDied += MobDeath;
        }

        if(GetComponent<IStunHandler>() != null)
        {
            GetComponent<IStunHandler>().OnStun += MobStun;
        }

       
        GetComponent<Collider>().enabled = true;
    }

    public void SetTargets(Transform player, Transform gate)
    {
        this.player = player;
        this.gate = gate;
    }

    public override void Update()
    {
        if (player != null && gate != null)
            FSM.StateUpdate();
    }

    void MobStun(float duration)
    {
        FSM.ChangeState(new EnemyIdleState(this, duration));
    }
   
    void MobDeath()
    {
        FSM.ChangeState(new EnemyDeathState(this));
    }

    public void SetToDestroy()
    {
        ObjectPool.Instance.ReturnToPool(this.gameObject);
    }

}