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

    public bool IsStunned
    {
        get
        {
            return isStunned;
        }

        set
        {
            isStunned = value;
        }
    }

    public event Action<float> OnStun;

    private bool isStunned;

    private void OnEnable()
    {
        navAgent = GetComponent<NavMeshAgent>();
        Boss = FindObjectOfType<BossStateController>();
        FSM.ChangeState(new EnemyChasePState(this));

        if (GetComponent<IHealthHandler>()!= null)
        {
            GetComponent<IHealthHandler>().OnDied += MobDeath;
            //GetComponent<IHealthHandler>().OnHPPctChanged += DisablePlayer;
        }

        GetComponent<Collider>().enabled = true;

    }

    public void SetTargets(Transform player, Transform gate)
    {
        this.player = player;
        this.gate = gate;
    }

    public override void HandleUpdate()
    {
        if (player != null && gate != null)
            FSM.StateUpdate();
    }

    public void TakeStun(float duration)
    {
        if(isStunned)
        {
            return;
        }   

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

    void DisablePlayer(float value)
    {
        value = UnityEngine.Random.Range(1f, 2f);
       // Animator.SetTrigger(Animator.StringToHash("Flinch1"));
        navAgent.isStopped = true;

    }

    public void EnableAgent()
    {
        navAgent.isStopped = false;

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