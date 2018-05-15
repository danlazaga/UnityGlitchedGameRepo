using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyChasePState : CustomConstructor<EnemyStateController>, IState
{
    float attackRange;

    public EnemyChasePState(EnemyStateController controller): base(controller)
    {
        attackRange = 2.0f;
    }

    public void OnStateEnter()
    {
        if (controller.player != null)
        {
            controller.NavAgent.SetDestination(controller.player.position);
        }
        controller.Animator.SetBool(Animator.StringToHash("Walk"), true);

    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("Walk"), false);
    }

    public void OnUpdate()
    {

        controller.NavAgent.SetDestination(controller.player.position);
        if (CheckDistance(controller.transform, controller.player) <= attackRange)
        {
            controller.FSM.ChangeState(new EnemyAttackState(controller, controller.player));
        }

        if (controller.Boss.hasShield)
        {
            controller.FSM.ChangeState(new EnemyChaseGateState(controller));
        }

       

    }

}