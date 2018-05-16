using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossLaserState : CustomConstructor<BossStateController>, IState
{
    public BossLaserState(BossStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
        controller.attacks++;
        controller.Animator.SetBool(Animator.StringToHash("Laser"), true);

    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("Laser"), false);
    }

    public void OnUpdate()
    {
        CheckAttackSequence();
    }


    public void CheckAttackSequence()
    {
        if (controller.attacks >= controller.maxAttacks + 2)
        {
            if (controller.Animator.GetBehaviour<LaserBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossShieldState(controller));
            }
          
        }
        else
        {
            if (controller.Animator.GetBehaviour<LaserBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossIdleState(controller));
            }
        }

    }
}
