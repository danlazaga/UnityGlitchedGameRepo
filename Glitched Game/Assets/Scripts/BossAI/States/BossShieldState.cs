﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossShieldState : CustomConstructor<BossStateController>, IState
{
    float shieldTime;
    float maxShieldTime;



    public BossShieldState(BossStateController controller) : base(controller)
    {
        shieldTime = 0;
        maxShieldTime = 2f;

    }

    public void OnStateEnter()
    {
        controller.hasShield = true;
        controller.attacks = 0;
        Debug.Log("Shield Active");
    }

    public void OnStateExit()
    {
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
