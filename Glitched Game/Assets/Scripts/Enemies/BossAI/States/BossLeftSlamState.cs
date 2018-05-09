using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossLeftSlamState : CustomConstructor<BossStateController>, IState, IStateAttacks
{
    float attackDuration;
    bool startAttack;

    public BossLeftSlamState(BossStateController controller): base(controller)
    {
        attackDuration = 5f;
        startAttack = true;
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
        CheckCurrentAttackDuration();
    }

    public void CheckAttackSequence()
    {
        if (controller.attacks >= controller.maxAttacks + 2)
        {
            if (controller.Animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 1)
            {
                Debug.Log("Animation Done");
                //controller.FSM.ChangeState(new BossShieldState(controller));
            }

        }

    }

    public void CheckCurrentAttackDuration()
    {
        // if current attack duration is over go back to idle
        if (startAttack)
        {
            //attackDuration -= Time.deltaTime;
            //if (attackDuration <= 0)
            //{
            //    controller.FSM.ChangeState(new BossIdleState(controller));
            //}
            if (controller.Animator.GetCurrentAnimatorStateInfo(0).normalizedTime > controller.Animator.GetCurrentAnimatorStateInfo(0).length)
            {
                controller.FSM.ChangeState(new BossIdleState(controller));
            }

        }
    }
}