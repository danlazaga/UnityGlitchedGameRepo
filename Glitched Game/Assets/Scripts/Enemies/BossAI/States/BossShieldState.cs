﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossShieldState : CustomConstructor<BossStateController>, IState
{
    //testing variables
    float shieldTime;
    float maxShieldTime;

    public BossShieldState(BossStateController controller) : base(controller)
    {
        shieldTime = 0;
        maxShieldTime = 15f;

    }

    public void OnStateEnter()
    {
        controller.hasShield = true;
        controller.attacks = 0;
        controller.Animator.SetBool(Animator.StringToHash("Shield"), true);
        Debug.Log("Shield Active");
    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("Shield"), false);
        controller.hasShield = false;
    }

    public void OnUpdate()
    {
       if(controller.hasShield)
       {
            shieldTime += Time.deltaTime;
            if(shieldTime >= maxShieldTime)
            {
                controller.FSM.ChangeState(new BossIdleState(controller));
            }
       }
    }
}
