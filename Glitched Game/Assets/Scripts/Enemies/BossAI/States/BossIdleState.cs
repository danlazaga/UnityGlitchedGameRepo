using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Idle/Attack Selection State
/// </summary>
public class BossIdleState : CustomConstructor<BossStateController>, IState
{
    public float idleTime;
    public float maxIdleTime;
    public bool idleMode;

    public BossIdleState(BossStateController controller) : base(controller)
    {

    }

    public void OnStateEnter()
    {
       idleMode = true;
        
    }

    public void OnStateExit()
    {
        idleMode = false;
        idleTime = 0;
    }

    public void OnUpdate()
    {

       if(idleMode)
        {
            idleTime += Time.deltaTime;
            if(idleTime >= maxIdleTime)
            {
               
                SelectAction(Randomize(0, controller.maxAttacks));
               
            }
        }
    }


    void SelectAction(int attackType)
    {
        switch(attackType)
        {
            case 0:
                
                controller.FSM.ChangeState(new BossLeftSlamState(controller));
                break;
            case 1:
                
                controller.FSM.ChangeState(new BossRightSlamState(controller));
                break;
            case 2:
                
                controller.FSM.ChangeState(new BossDoubleSlamState(controller));
                break;
            case 3:
                
                controller.FSM.ChangeState(new BossLaserState(controller));
                break;
            case 4:
                
                controller.FSM.ChangeState(new BossBulletRainState(controller));
                break;
          




        }

    }
}
