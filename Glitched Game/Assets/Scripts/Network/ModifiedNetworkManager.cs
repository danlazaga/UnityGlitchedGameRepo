using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class ModifiedNetworkManager : NetworkManager
{
	private static ModifiedNetworkManager instance;
	public static ModifiedNetworkManager Instance
	{
		get
		{
			return instance;
		}
	}

	void Awake()
	{
		if (instance == null)
		{
			instance = this;
		}
		else if (instance != this)
		{
			Destroy(gameObject);
		}
	}

	public override void OnStartHost()
	{
		base.OnStartHost();
		Debug.Log("Host Started!");
	}

	public override void OnStartClient(NetworkClient client)
	{
		base.OnStartClient(client);

		Debug.Log("Connected!");
	}
}