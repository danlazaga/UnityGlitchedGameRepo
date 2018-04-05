using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyIdleState: CustomConstructor<EnemyStateController>, IState
{
    public EnemyIdleState(EnemyStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
        Debug.Log("Enter Idle");
    }

    public void OnStateExit()
    {
        Debug.Log("Exit Idle");
    }

    public void OnUpdate()
    {
        
    }
}
