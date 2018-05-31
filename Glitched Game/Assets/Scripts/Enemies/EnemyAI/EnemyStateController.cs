using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Networking;

[RequireComponent(typeof(NavMeshAgent))]
public class EnemyStateController : StateController, IStunHandler
{

    public event Action<float> OnStun;

    private NavMeshAgent navAgent;
    private GameObject playerPos;
    private GameObject gatePos;
    private bool isStunned;
    public NavMeshAgent NavAgent { get { return navAgent; } set { navAgent = value; } }
    public Transform PlayerPos { get { return playerPos.transform; } set { } }
    public Transform GatePos { get { return gatePos.transform; } set { } }
    public BossStateController Boss { get; set; }
    public bool IsStunned { get { return isStunned; } set { isStunned = value; } }

    public override void OnEnable()
    {
        base.OnEnable();
        
        gatePos = GameObject.FindGameObjectWithTag("Gate");
        playerPos = GameObject.FindGameObjectWithTag("MainCamera");
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

    public override void OnDisable()
    {
        base.OnDisable();

        if (GetComponent<IHealthHandler>()!= null)
        {
            GetComponent<IHealthHandler>().OnDied -= MobDeath;
        }
    }
    
    public override void HandleUpdate()
    {
        if (PlayerPos != null && GatePos != null)
            FSM.StateUpdate();
    }

    public void TakeStun(float duration)
    {
        if (isStunned)
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
        EnemyPool.Instance.UnSpawnObject(this.gameObject);
        NetworkServer.UnSpawn(this.gameObject);
    }

    //IEnumerator MobStun(float duration)
    //{
    //    FSM.ChangeState(new EnemyIdleState(this));
    //    yield return new WaitForSeconds(duration);
    //    FSM.ChangeState(new EnemyChasePState(this));
    //}
}