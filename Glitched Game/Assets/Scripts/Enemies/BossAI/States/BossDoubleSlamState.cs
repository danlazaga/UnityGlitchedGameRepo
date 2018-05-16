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
        controller.Animator.SetBool(Animator.StringToHash("DoubleSlam"), true);
        Debug.Log("Double Slam");
    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("DoubleSlam"), false);
    }

    public void OnUpdate()
    {
        if (controller.attacks >= controller.maxAttacks + 2)
        {
            if (controller.Animator.GetBehaviour<DoubleSlamBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossShieldState(controller));
            }
          
        }
        else
        {
            if (controller.Animator.GetBehaviour<DoubleSlamBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossIdleState(controller));
            }
        }

       

    }
}
