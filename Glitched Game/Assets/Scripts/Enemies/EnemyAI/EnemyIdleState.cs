using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyIdleState: CustomConstructor<EnemyStateController>, IState
{
    float stunDuration;

    public EnemyIdleState(EnemyStateController controller) : base(controller)
    {
    
    }

    public void OnStateEnter()
    {
        Debug.Log("Enter Idle");
        controller.Animator.SetBool(Animator.StringToHash("Idle"), true);
    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("Idle"), false);
        Debug.Log("Exit Idle");
    }

    public void OnUpdate()
    {
        //stunDuration -= Time.deltaTime;
        //if(stunDuration <=  0)
        //{
        //    controller.FSM.ChangeState(new EnemyChasePState(controller));
        //}
    }
}
