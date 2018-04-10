using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Idle/Attack Selection State
/// </summary>
public class BossIdleState : CustomConstructor<BossStateController>, IState
{
    public BossIdleState(BossStateController controller) : base(controller)
    {
    }

    public void OnStateEnter()
    {
        controller.idleMode = true;
        //Debug.Log("Idling");
    }

    public void OnStateExit()
    {
        controller.idleMode = false;
        controller.idleTime = 0;
    }

    public void OnUpdate()
    {

       if(controller.idleMode)
        {
            controller.idleTime += Time.deltaTime;
            if(controller.idleTime >= controller.maxIdleTime)
            {
                controller.idleMode = false;
                SelectAction(Randomize(0, controller.maxAttacks));
              
                controller.idleTime = 0;
            }
        }
    }


    void SelectAction(int attackType)
    {
        switch(attackType)
        {
            case 0:
                //Debug.Log("Selected Left Slam Attack");
                controller.FSM.ChangeState(new BossLeftSlamState(controller));
                break;
            case 1:
                //Debug.Log("Right Slam Attack");
                controller.FSM.ChangeState(new BossRightSlamState(controller));
                break;
            case 2:
                //Debug.Log("Double Slam Attack");
                controller.FSM.ChangeState(new BossDoubleSlamState(controller));
                break;
            case 3:
                //Debug.Log("Laser Attack");
                controller.FSM.ChangeState(new BossLaserState(controller));
                break;
            case 4:
                Debug.Log("Bullet Rain Attack");
                controller.FSM.ChangeState(new BossBulletRainState(controller));
                break;
          




        }

    }
}
