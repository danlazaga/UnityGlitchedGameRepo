using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyStateController : StateController
{
    [Header("Targets")]
    public Transform player;
    public Transform gate;

   // public GameObject boss;

    // testing bool if boss has shield
    public bool hasShield;


    private void Start()
    {
        FSM.ChangeState(new EnemyChasePState(this));
    }

    public override void Update()
    {
        FSM.StateUpdate();      
    }
}
