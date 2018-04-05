using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyStateController : StateController
{
    [Header("Targets")]
    public Transform player;
    public Transform[] gates;

    private GameObject boss;


    private void Start()
    {
        FSM.ChangeState(new EnemyIdleState(this));
    }

    public override void Update()
    {
        FSM.StateUpdate();      
    }
}
