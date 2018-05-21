
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
        int random = Random.Range(0,4);
        controller.NavAgent.isStopped = true;
        controller.Animator.SetBool(Animator.StringToHash("Idle"), true);
    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("Idle"), false);
        controller.NavAgent.isStopped = false;
        Debug.Log("Exit Idle");
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