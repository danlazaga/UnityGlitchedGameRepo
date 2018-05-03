using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyAttackState :CustomConstructor<EnemyStateController>, IState
{
    private Transform _target;

    public EnemyAttackState(EnemyStateController controller, Transform target) : base(controller)
    {
        _target = target;
    }

    public void OnStateEnter()
    {
        Debug.Log("Enemy Attacking");
        controller.NavAgent.isStopped = true;

        controller.Animator.SetTrigger(Animator.StringToHash("Attack"));
    }

    public void OnStateExit()
    {
        
        controller.NavAgent.isStopped = false;
    }

    public void OnUpdate()
    {
        if (controller.Boss.hasShield && _target == controller.player)
        {
            controller.FSM.ChangeState(new EnemyChaseGateState(controller));
        }
        else if(!controller.Boss.hasShield && _target == controller.gate)
        {
            controller.FSM.ChangeState(new EnemyChasePState(controller));
        }
      
    }
}
