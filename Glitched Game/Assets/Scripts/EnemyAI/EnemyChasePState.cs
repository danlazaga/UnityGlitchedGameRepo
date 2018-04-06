using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyChasePState :CustomConstructor<EnemyStateController>, IState
{
    

    public EnemyChasePState(EnemyStateController controller) : base(controller)
    {
        
    }

    public void OnStateEnter()
    {
        if(controller.player != null)
        {
            controller.NavAgent.SetDestination(controller.player.position);
        }

        Debug.Log("Chasing PLayer");
        
    }

    public void OnStateExit()
    {
        Debug.Log("Exit Player Chase state");
    }

    public void OnUpdate()
    {
        if(CheckDistance(controller.transform, controller.player) <= 5f) // attack Range
        {
            controller.FSM.ChangeState(new EnemyAttackState(controller, controller.player.transform));
        }

        if (controller.hasShield)
        {
            controller.FSM.ChangeState(new EnemyChaseGateState(controller));
        }
    }


}
