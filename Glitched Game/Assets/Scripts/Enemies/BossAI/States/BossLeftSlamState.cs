using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossLeftSlamState : CustomConstructor<BossStateController>, IState, IStateAttacks
{
    public BossLeftSlamState(BossStateController controller) : base(controller)
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
    }

    public void CheckAttackSequence()
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

    public void CheckCurrentAttackDuration()
    {
       // if current attack duration is over go back to idle
    }
}
