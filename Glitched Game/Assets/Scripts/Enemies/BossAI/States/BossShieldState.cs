using System;
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
        maxShieldTime = 25f;

    }

    public void OnStateEnter()
    {
        controller.hasShield = true;
        controller.attacks = 0;
        controller.Animator.SetBool(Animator.StringToHash("Shield"), true);
        GameManager.Instance.ForceSpawn();
        Debug.Log("Shield Active");
    }

    public void OnStateExit()
    {
        controller.Animator.SetBool(Animator.StringToHash("Shield"), false);

        //play testing only
        controller.ShieldHealth.gameObject.SetActive(false);
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
