using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossBulletRainState : CustomConstructor<BossStateController>, IState
{
    public BossBulletRainState(BossStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
        controller.Animator.SetBool("Missile", true);
        Debug.Log("Launching Missile");

    }

    public void OnStateExit()
    {
        controller.Animator.SetBool("Missile", false);
    }

    public void OnUpdate()
    {
        CheckAttackSequence();
    }

    public void CheckAttackSequence()
    {
        if (controller.attacks >= controller.maxAttacks + 2)
        {
            if (controller.Animator.GetBehaviour<MissileStateBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossShieldState(controller));
            }
            

        }
        else
        {
            if (controller.Animator.GetBehaviour<MissileStateBehaviour>().IsDurationDone)
            {
                controller.FSM.ChangeState(new BossIdleState(controller));
            }
        }

    }
}
