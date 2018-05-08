using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Networking;

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
        //var fMin = (float)min;
        //var fMax = (float)max;

        var rand = Random.Range(min, max +1);
        return rand;
        //var value = (int)rand;  
        //return value;
    }
}


public abstract class StateController : MonoBehaviour {

    public AIStateMachine FSM;
    
    private Animator _animator;
   
    public Animator Animator
    {
        get
        {
            return _animator;
        }

        set
        {
            _animator = value;
        }
    }


    public virtual void Awake()
    {
       
        _animator = GetComponent<Animator>();
      

        FSM = new AIStateMachine(this);
    }

    public abstract void Update();

    
}
