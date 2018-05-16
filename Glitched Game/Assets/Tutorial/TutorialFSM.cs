using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialFSM : MonoBehaviour
{
	protected GameObject playerPos;
	public int attack;
	public int maxAttacks;

	protected virtual void Initialize() { }
	protected virtual void FSMUpdate() { }

	void Start()
	{
		Initialize();
	}

	void Update()
	{
		FSMUpdate();		
	}
}