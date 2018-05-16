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
        float distance = Vector3.Distance(obj.transform.position, player.transform.position);
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

    private void Start()
    {
        UpdateManager.Instance.toUpdate += HandleUpdate;
    }

    private void OnDestroy()
    {
        UpdateManager.Instance.toUpdate -= HandleUpdate;
    }

    public abstract void HandleUpdate();

    
}
