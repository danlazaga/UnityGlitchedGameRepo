using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Networking;

//subclass for sending network messages
public class NetworkMessage : MessageBase
{
	public int chosenClass;
}

public class ModifiedNetworkManager : NetworkManager
{
	[Space(10)]
	[SerializeField] GameObject[] characters;
	[SerializeField] NetworkSpawnPosition networkSpawnPosition;
	[HideInInspector] public int chosenCharacter = 0;
	

	public delegate void OnStopSession();
	public event OnStopSession onStopSession;

	private static ModifiedNetworkManager instance;
	public static ModifiedNetworkManager Instance {	get	{ return instance;	} }

#region Unity Methods
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

	public override void OnClientConnect(NetworkConnection conn)
	{
		NetworkMessage test = new NetworkMessage();
		test.chosenClass = chosenCharacter;
		ClientScene.AddPlayer(conn, 0, test);
	}

	public override void OnStopHost()
	{
		base.OnStopHost();
		if (onStopSession != null) { onStopSession(); }

	}

	public override void OnStopClient()
	{
		base.OnStopClient();
		if (onStopSession != null) { onStopSession(); }
	}

	public override void OnServerAddPlayer(NetworkConnection conn, short playerControllerId, NetworkReader extraMessageReader)
	{
		NetworkMessage message = extraMessageReader.ReadMessage<NetworkMessage>();
		int selectedClass = message.chosenClass;
		Debug.Log("server add with message " + selectedClass);

		GameObject player;

		if (selectedClass == 0)
		{
			Transform startPos = networkSpawnPosition.GetHTCSpawnPositions();
			player = Instantiate(characters[0], startPos.position, startPos.rotation)as GameObject;
		}
		else
		{
			Transform startPos = networkSpawnPosition.GetSpawnPositions();
			player = Instantiate(characters[selectedClass], startPos.position, startPos.rotation)as GameObject;
		}

		NetworkServer.AddPlayerForConnection(conn, player, playerControllerId);

	}
#endregion
}