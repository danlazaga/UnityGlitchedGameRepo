using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyWalkBackState : CustomConstructor<EnemyStateController>, IState
{
    public EnemyWalkBackState(EnemyStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
        Vector3 backPos = (controller.transform.position - Vector3.back * 2) ;

        controller.NavAgent.SetDestination(backPos);

        controller.NavAgent.updateRotation = false;
        controller.Animator.SetBool(Animator.StringToHash("WalkBackwards"), true);
    }

    public void OnStateExit()
    {
        controller.NavAgent.updateRotation = true;
        controller.Animator.SetBool(Animator.StringToHash("WalkBackwards"), false);
    }

    public void OnUpdate()
    {
        if(controller.Animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 1)
        {
            return;
        }
    }
}
