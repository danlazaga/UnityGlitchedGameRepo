using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyDeathState : CustomConstructor<EnemyStateController>, IState
{
    public EnemyDeathState(EnemyStateController controller) : base(controller)
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
