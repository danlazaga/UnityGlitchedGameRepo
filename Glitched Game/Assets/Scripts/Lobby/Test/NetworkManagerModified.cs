using UnityEngine;
using UnityEngine.Networking;

public class NetworkManagerModified : NetworkManager
{

	private static NetworkManagerModified managerInstance;

	public static NetworkManagerModified ManagerInstance
	{
		get
		{
			return managerInstance;
		}
	}

	void Awake()
	{
		managerInstance = this;
	}

	public void StartHostModified()
	{
		StartHost();
	}

	public override void OnStartHost()
	{
		base.OnStartHost();

		Debug.Log("Host Started!");
	}

	public void JoinGame(string networkAdressString)
	{
		networkAddress = networkAdressString;

		StartClient();
	}

	public override void OnStartClient(NetworkClient client)
	{
		base.OnStartClient(client);
	
		Debug.Log("Connected!");
	}
}