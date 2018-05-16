using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Networking;

[RequireComponent(typeof(NavMeshAgent))]
public class EnemyStateController : StateController, IStunHandler
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
    public event Action<float> OnStun;

    private void OnEnable()
    {
        navAgent = GetComponent<NavMeshAgent>();
        Boss = FindObjectOfType<BossStateController>();
        FSM.ChangeState(new EnemyChasePState(this));

        if (GetComponent<IHealthHandler>()!= null)
        {
            GetComponent<IHealthHandler>().OnDied += MobDeath;
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

    public void TakeStun(float duration)
    {
        //StartCoroutine(MobStun(duration));
        FSM.ChangeState(new EnemyIdleState(this, duration));
        if (OnStun != null)
        {
            OnStun(duration);
        }
    }

    void MobDeath()
    {
        FSM.ChangeState(new EnemyDeathState(this));
    }

    public void SetToDestroy()
    {
        ObjectPool.Instance.ReturnToPool(this.gameObject);
    }

    //IEnumerator MobStun(float duration)
    //{
    //    FSM.ChangeState(new EnemyIdleState(this));
    //    yield return new WaitForSeconds(duration);
    //    FSM.ChangeState(new EnemyChasePState(this));
    //}
}