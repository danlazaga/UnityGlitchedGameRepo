﻿using System;
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
        controller.Animator.SetBool(Animator.StringToHash("RightSlam"), true);

       

    }
    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("RightSlam"), false);

    }

    public void OnUpdate()
    {
        CheckAttackSequence();
      
    }

    public void CheckAttackSequence()
    {
        if (controller.attacks >= controller.maxAttacks + 2)
        {
            if (controller.Animator.GetBehaviour<AttackStateBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossShieldState(controller));
            }

        }
        else
        {
            if (controller.Animator.GetBehaviour<AttackStateBehaviour>().IsDurationDone)
            {
                Debug.Log(controller.Animator.GetBehaviour<AttackStateBehaviour>().IsDurationDone);
                controller.FSM.ChangeState(new BossIdleState(controller));
            }
        }

    }

   
}
