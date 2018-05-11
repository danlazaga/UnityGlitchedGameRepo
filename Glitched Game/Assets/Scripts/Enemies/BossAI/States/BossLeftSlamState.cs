using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossLeftSlamState : CustomConstructor<BossStateController>, IState
{

   

    public BossLeftSlamState(BossStateController controller): base(controller)
    {
      
    }

    public void OnStateEnter()
    {
        // play Animation
        Debug.Log("Left Slam");
        controller.attacks++;
        controller.Animator.SetBool(Animator.StringToHash("LeftSlam"), true);
    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("LeftSlam"), false);
    }

    public void OnUpdate()
    {
        CheckAttackSequence();
        Debug.Log(controller.Animator.GetBehaviour<LeftSlamBehaviour>().IsDurationDone);
    }

    public void CheckAttackSequence()
    {
        if (controller.attacks >= controller.maxAttacks + 2)
        {
            if (controller.Animator.GetBehaviour<LeftSlamBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossShieldState(controller));
            }

        }
        else
        {
            if (controller.Animator.GetBehaviour<LeftSlamBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossIdleState(controller));
            }
        }

    }

   
}