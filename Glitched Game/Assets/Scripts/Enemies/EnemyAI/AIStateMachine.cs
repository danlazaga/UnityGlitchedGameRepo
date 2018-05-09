using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IState
{
    
    void OnStateEnter();
    void OnStateExit();
    void OnUpdate();



}


public class AIStateMachine {

    private StateController _controller;
    private IState currentState;


    public AIStateMachine(StateController controller)
    {
        _controller = controller;
    }


    public void ChangeState(IState newState)
    {
        if(currentState != null)
        {
            currentState.OnStateExit();
        }
        currentState = newState;

        if(currentState !=null)
        {
            currentState.OnStateEnter();
        }
        

    }

    public void StateUpdate()
    {
        if(currentState != null)
        {
            currentState.OnUpdate();
        }
        
    }
	
}
