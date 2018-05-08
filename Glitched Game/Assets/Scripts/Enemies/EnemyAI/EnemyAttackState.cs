using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyAttackState :CustomConstructor<EnemyStateController>, IState
{
    private Transform _target;

    public EnemyAttackState(EnemyStateController controller, Transform target) : base(controller)
    {
        _target = target;
    }

    public void OnStateEnter()
    {
        Debug.Log("Enemy Attacking");
        controller.NavAgent.isStopped = true;

        controller.Animator.SetTrigger(Animator.StringToHash("Attack"));
    }

    public void OnStateExit()
    {
        
        controller.NavAgent.isStopped = false;
    }

    public void OnUpdate()
    {
        FaceTarget();

        if (controller.Boss.hasShield && _target == controller.player)
        {
            controller.FSM.ChangeState(new EnemyChaseGateState(controller));
        }
        else if(!controller.Boss.hasShield && _target == controller.gate)
        {
            controller.FSM.ChangeState(new EnemyChasePState(controller));
        }
      
    }

    // set to face target
    private void FaceTarget()
    {
        Vector3 direction = (controller.NavAgent.destination - controller.transform.position).normalized;
        Quaternion targetRot = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        controller.transform.rotation = Quaternion.Slerp(controller.transform.rotation, targetRot, Time.deltaTime * 5f);
    }
}
