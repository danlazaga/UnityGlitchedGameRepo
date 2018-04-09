using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossRightSlamState : CustomConstructor<BossStateController>, IState
{
    public BossRightSlamState(BossStateController controller) : base(controller)
    {
    }

    public void OnStateEnter()
    {
        controller.attacks++;
        Debug.Log("RightSlamAttack");

    }
    public void OnStateExit()
    {
        // exit anim
        
    }

    public void OnUpdate()
    {
        if (controller.attacks >= controller.maxAttacks + 1)
        {
            controller.FSM.ChangeState(new BossShieldState(controller));
        }
        else
        {
            controller.FSM.ChangeState(new BossIdleState(controller));
        }
    }
}
