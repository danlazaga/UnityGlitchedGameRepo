using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UpdateManager : Singleton<UpdateManager> 
{
	public delegate void ToUpdate();
	public ToUpdate toUpdate;
	public ToUpdate toFixedUpdate;
	public ToUpdate toLateUpdate;


#region Unity Methods

	private void Awake()
	{
		instance = this;
	}

	void Update () 
	{
		if(toUpdate != null)
			toUpdate();
	}

	void FixedUpdate()
	{
		if(toFixedUpdate != null)
			toFixedUpdate();
	}

	void LateUpdate()
	{
		if(toLateUpdate != null)
			toLateUpdate();
	}
#endregion
}
