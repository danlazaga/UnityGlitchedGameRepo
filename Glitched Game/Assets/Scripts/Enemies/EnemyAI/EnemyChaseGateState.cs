using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyChaseGateState : CustomConstructor<EnemyStateController>, IState
{
    float attackRange;

    public EnemyChaseGateState(EnemyStateController controller) : base(controller)
    {
        attackRange = 0.8f;
    }

    public void OnStateEnter()
    {
        Debug.Log("Approaching Gate");
        if(controller.gate != null)
        {
            controller.NavAgent.SetDestination(controller.gate.position);
        }

        controller.Animator.SetTrigger(Animator.StringToHash("Walk"));

    }

    public void OnStateExit()
    {
        Debug.Log("Exiting Gate Chase State");
    }

    public void OnUpdate()
    {
        if (CheckDistance(controller.transform, controller.gate) <= attackRange ) // attack Range
        {
            controller.FSM.ChangeState(new EnemyAttackState(controller, controller.gate.transform));
        }

        if (!controller.Boss.hasShield)
        {
            controller.FSM.ChangeState(new EnemyChasePState(controller));
        }
    }
}
