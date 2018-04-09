using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossLeftSlamState : CustomConstructor<BossStateController>, IState
{
    public BossLeftSlamState(BossStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
        // play Animation
        Debug.Log(" Left Slam");
        controller.attacks++;
    }

    public void OnStateExit()
    {
        
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
