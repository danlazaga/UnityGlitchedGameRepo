using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyDeathState : CustomConstructor<EnemyStateController>, IState
{
    public EnemyDeathState(EnemyStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
        controller.GetComponent<Collider>().enabled = false;
        controller.NavAgent.isStopped = true;
        controller.Animator.SetTrigger(Animator.StringToHash("Death"));
    }

    public void OnStateExit()
    {
       
    }

    public void OnUpdate()
    {
       
    }
}
