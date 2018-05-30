using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyChaseGateState : CustomConstructor<EnemyStateController>, IState
{
    float attackRange;

    public EnemyChaseGateState(EnemyStateController controller) : base(controller)
    {
        attackRange = 2.3f;
    }

    public void OnStateEnter()
    {
       
        if(controller.GatePos != null)
        {
            controller.NavAgent.SetDestination(controller.GatePos.position);
        }

        controller.Animator.SetBool(Animator.StringToHash("Walk"), true);

    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("Walk"), false);
        //controller.NavAgent.SetDestination(controller.player.position);
    }

    public void OnUpdate()
    {
        if (CheckDistance(controller.transform, controller.GatePos) <= attackRange ) 
        {
            controller.FSM.ChangeState(new EnemyAttackState(controller, controller.GatePos.transform));
        }

        if (!controller.Boss.hasShield)
        {
            controller.FSM.ChangeState(new EnemyChasePState(controller));
        }
    }
}
