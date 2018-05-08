using System;
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

        if (GetComponent<IHealthHandler>()!= null)
        {
            GetComponent<IHealthHandler>().OnDied += MobDeath;
        }

        Animator.Play("Mob_Idle");
        GetComponent<Collider>().enabled = true;
    }

    public override void Update()
    {
        if (player != null && gate != null)
            FSM.StateUpdate();
    }

    public void SetTargets(Transform player, Transform gate)
    {
        this.player = player;
        this.gate = gate;
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