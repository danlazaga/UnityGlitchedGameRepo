using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyChasePState :CustomConstructor<EnemyStateController>, IState
{
    float attackRange;
    
    public EnemyChasePState(EnemyStateController controller) : base(controller)
    {
        attackRange = 2.8f;
    }

    public void OnStateEnter()
    {
        if(controller.player != null)
        {
            controller.NavAgent.SetDestination(controller.player.position);
        }

      

        controller.Animator.SetTrigger(Animator.StringToHash("Walk"));
        
    }

    public void OnStateExit()
    {
        
    }

    public void OnUpdate()
    {
        if(CheckDistance(controller.transform, controller.player) <= attackRange) 
        {
            controller.FSM.ChangeState(new EnemyAttackState(controller, controller.player.transform));
        }

        if (controller.Boss.hasShield)
        {
            controller.FSM.ChangeState(new EnemyChaseGateState(controller));
        }
    }


}
