using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialBossAi : TutorialFSM
{
	public enum FSMState
	{
		Idle, Attack, Dead
	}

	public FSMState curState;
	public Animator anim;
	public bool changeState;
	bool firstAttack;
	int health;

	protected override void Initialize()
	{
		curState = FSMState.Idle;
		health = 100;
		firstAttack = true;
		playerPos = GameObject.FindGameObjectWithTag("Player");
	}

	protected override void FSMUpdate()
	{
		switch(curState)
		{
			case FSMState.Idle:
				UpdateIdleState();
				break;
			case FSMState.Attack:
				UpdateAttackState();
				break;
			case FSMState.Dead:
				UpdateDeadState();
				break;
		}
	}

	void UpdateIdleState()
	{
		if (changeState)
			curState = FSMState.Attack;
	}

	void UpdateAttackState()
	{
		if(firstAttack)
		{
			FirstStrike();
			firstAttack = false;
		}
	}

	void UpdateDeadState()
	{

	}

	void FirstStrike()
	{
		anim.SetBool("LeftSlam", true);
	}
}