using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Boss Inactive/shutdown state
/// </summary>
public class BossDisableState : CustomConstructor<BossStateController>, IState
{
    private bool disabled;

    private float maxDisableTime;
    private float disableTime;

    public BossDisableState(BossStateController controller) : base(controller)
    {

        disabled = true;
        disableTime = 0;
        maxDisableTime = 5f;
    }

    public void OnStateEnter()
    {
        Debug.Log("DISABLED");
        //play Animation
    }

    public void OnStateExit()
    {
        disabled = false;
        disableTime = 0;
    }

    public void OnUpdate()
    {
        if(disabled)
        {
            disableTime += Time.deltaTime;
            if(disableTime > maxDisableTime)
            {
                Debug.Log("Boss ACTIVATED");
               
                controller.FSM.ChangeState(new BossIdleState(controller));
            }
        }
    }
}
