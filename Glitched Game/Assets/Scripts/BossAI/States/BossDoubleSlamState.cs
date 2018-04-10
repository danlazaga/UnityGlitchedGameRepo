using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossDoubleSlamState : CustomConstructor<BossStateController>, IState
{
    public BossDoubleSlamState(BossStateController controller) : base(controller)
    {
    }

    public void OnStateEnter()
    {
        controller.attacks++;
        Debug.Log("Double Slam");
    }

    public void OnStateExit()
    {
        
    }

    public void OnUpdate()
    {
        if (controller.attacks >= controller.maxAttacks + 2)
        {
            controller.FSM.ChangeState(new BossShieldState(controller));
        }
        else
        {
            controller.FSM.ChangeState(new BossIdleState(controller));
        }
    }
}
