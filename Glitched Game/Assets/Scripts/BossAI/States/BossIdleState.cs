using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossIdleState : CustomConstructor<BossStateController>, IState
{
    public BossIdleState(BossStateController controller) : base(controller)
    {
    }

    public void OnStateEnter()
    {
        throw new NotImplementedException();
    }

    public void OnStateExit()
    {
        throw new NotImplementedException();
    }

    public void OnUpdate()
    {
        throw new NotImplementedException();
    }
}
