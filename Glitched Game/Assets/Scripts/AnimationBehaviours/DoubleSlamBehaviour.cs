﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoubleSlamBehaviour: StateMachineBehaviour {

    private bool isDurationDone;

    //private float atkDuration;
    //private float currentDuration = 0;

    //bool onStart;

    public bool IsDurationDone
    {
        get
        {
            return isDurationDone;
        }

    }



    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isDurationDone = false;
        if(isDurationDone)
        {
            isDurationDone = false;
        }
       
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        //Debug.Log(stateInfo.normalizedTime);
        if(stateInfo.normalizedTime > 1)
        {
            isDurationDone = true;
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {

	}

	// OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
	//override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
	//override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}
}
