using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public abstract class CustomConstructor<T>
{
    public T controller;

    public CustomConstructor(T controller)
    {
        this.controller = controller;
    }

    public float CheckDistance(Transform obj, Transform player)
    {
        float distance = (obj.position - player.position).magnitude;
        return distance;
    }

    public int Randomize(int min, int max)
    {
        int rand = Random.Range(min, max);
        return rand;
    }
}

[RequireComponent(typeof(NavMeshAgent))]
public abstract class StateController : MonoBehaviour {

    public AIStateMachine FSM;
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

    public virtual void Awake()
    {
        navAgent = GetComponent<NavMeshAgent>();
        FSM = new AIStateMachine(this);
    }

    public abstract void Update();
}
