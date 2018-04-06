using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossStateController : StateController
{
    public float idleTime;
    public float maxIdleTime;

    public bool hasShield;

    public Transform[] attacksSpawnPoints;
    
    private void Start()
    {
        
    }

    public override void Update()
    {
        FSM.StateUpdate();
    }
}
