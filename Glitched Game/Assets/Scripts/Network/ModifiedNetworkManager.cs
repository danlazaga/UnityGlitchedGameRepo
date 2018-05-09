using System.Collections;
using System.Collections.Generic;
using UnityEngine;
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

	private static ModifiedNetworkManager instance;
	public static ModifiedNetworkManager Instance
	{
		get
		{
			return instance;
		}
	}

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

	public override void OnServerAddPlayer(NetworkConnection conn, short playerControllerId, NetworkReader extraMessageReader)
	{
		NetworkMessage message = extraMessageReader.ReadMessage<NetworkMessage>();
		int selectedClass = message.chosenClass;
		Debug.Log("server add with message " + selectedClass);

		GameObject player;
		//Transform startPos = GetStartPosition();
		Transform startPos = networkSpawnPosition.GetSpawnPositions();

		if (startPos != null)
		{
			player = Instantiate(characters[selectedClass], startPos.position, startPos.rotation)as GameObject;
		}
		else
		{
			player = Instantiate(characters[selectedClass], Vector3.zero, Quaternion.identity)as GameObject;

		}

		NetworkServer.AddPlayerForConnection(conn, player, playerControllerId);

	}
#endregion
}