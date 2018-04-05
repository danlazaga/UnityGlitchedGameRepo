using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CustomConstructor<T>
{
    public CustomConstructor(T controller)
    {

    }
}


public abstract class StateController : MonoBehaviour {

    public AIStateMachine FSM;

    public virtual void Awake()
    {
        FSM = new AIStateMachine(this);
    }

    public abstract void Update();
}
