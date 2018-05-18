using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossDeathState : CustomConstructor<BossStateController>, IState
{
    public BossDeathState(BossStateController controller) : base(controller)
    {
    }

    public void OnStateEnter()
    {
        controller.Animator.SetTrigger("Death");
    }

    public void OnStateExit()
    {
       
    }

    public void OnUpdate()
    {
        
    }
}
