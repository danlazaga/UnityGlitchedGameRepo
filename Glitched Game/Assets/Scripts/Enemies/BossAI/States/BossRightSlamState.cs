using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossRightSlamState : CustomConstructor<BossStateController>, IState, IStateAttacks
{

    float attackDuration;
    bool startAttack;

    public BossRightSlamState(BossStateController controller) : base(controller)
    {
        attackDuration = 5f;
        startAttack = true;
    }

   
    public void OnStateEnter()
    {
        controller.attacks++;
        controller.Animator.SetBool(Animator.StringToHash("RightSlam"), true);
        Debug.Log("RightSlamAttack");

    }
    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("RightSlam"), false);

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
            controller.FSM.ChangeState(new BossShieldState(controller));
        }
       
    }

    public void CheckCurrentAttackDuration()
    {
        if (startAttack)
        {
            //attackDuration -= Time.deltaTime;
            //if (attackDuration <= 0)
            //{
            //    controller.FSM.ChangeState(new BossIdleState(controller));
            //}

            if(controller.Animator.GetCurrentAnimatorStateInfo(0).normalizedTime > controller.Animator.GetCurrentAnimatorStateInfo(0).length)
            {
                controller.FSM.ChangeState(new BossIdleState(controller));
            }

        }
    }

}
