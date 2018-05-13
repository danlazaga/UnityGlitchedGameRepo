﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyAttackState : CustomConstructor<EnemyStateController>, IState
{
    Transform _target;
    float attackRange;
    public EnemyAttackState(EnemyStateController controller, Transform target): base(controller)
    {
        _target = target;
        attackRange = 2.5f;
    }

    public void OnStateEnter()
    {
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
        CheckTargets();
        CheckAttackRange();
       
    }

    // set to face target
    private void FaceTarget()
    {
        Vector3 direction = (_target.position - controller.transform.position).normalized;
        Quaternion targetRot = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        controller.transform.rotation = Quaternion.Slerp(controller.transform.rotation, targetRot, Time.deltaTime * 5f);
    }

    private void CheckTargets()
    {
        if (controller.Boss.hasShield && _target == controller.player)
        {
            controller.FSM.ChangeState(new EnemyChaseGateState(controller));
        }
        else if (!controller.Boss.hasShield && _target == controller.gate)
        {
            controller.FSM.ChangeState(new EnemyChasePState(controller));
        }
    }

    private void CheckAttackRange()
    {
        if (CheckDistance(controller.transform, _target) > attackRange)
        {
            if(_target == controller.player)
                controller.FSM.ChangeState(new EnemyChasePState(controller));
            
        }

        //if (controller.Animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 2)
        //{
        //    controller.FSM.ChangeState(new EnemyWalkBackState(controller));
        //}
    }
}