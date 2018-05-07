using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossBulletRainState : CustomConstructor<BossStateController>, IState
{
    public BossBulletRainState(BossStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
        controller.Animator.SetBool("Missile", true);

    }

    public void OnStateExit()
    {
        controller.Animator.SetBool("Missile", false);
    }

    public void OnUpdate()
    {
        
    }
}
