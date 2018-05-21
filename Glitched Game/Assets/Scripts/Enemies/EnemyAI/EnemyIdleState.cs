
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyIdleState : CustomConstructor<EnemyStateController>, IState
{
    float stunDuration;

    public EnemyIdleState(EnemyStateController controller, float stunDuration): base(controller)
    {
        this.stunDuration = stunDuration;
    }

    public void OnStateEnter()
    {
        Debug.Log("Enter Idle/Stun");
       
        controller.NavAgent.isStopped = true;
        controller.Animator.SetTrigger(Animator.StringToHash("StunTrigger"));
    }

    public void OnStateExit()
    {
        controller.Animator.SetTrigger(Animator.StringToHash("StunEnd"));
        controller.NavAgent.isStopped = false;
        Debug.Log("Exit Stun");
    }

    public void OnUpdate()
    {
        stunDuration -= Time.deltaTime;
        if (stunDuration <= 0)
        {
            controller.FSM.ChangeState(new EnemyChasePState(controller));
        }
    }
}