// using UnityEngine;
// using UnityEngine.Networking;

// public class ModifiedNetworkLobbyManager : NetworkLobbyManager
// {
// #region  Variable & Instance
// 	[Space(10)]
// 	[SerializeField] string sceneName;

// 	[Space(10)]
// 	public Color[] colorArray;

// 	[Space(10)]
// 	[HideInInspector] public int currentPlayerColor = 0; 

// 	private static ModifiedNetworkLobbyManager instance;

// 	public static ModifiedNetworkLobbyManager Instance
// 	{
// 		get
// 		{
// 			return instance;
// 		}
// 	}
// #endregion

// #region Unity Methods 
// 	void Awake()
// 	{
// 		instance = this;
// 	}
// #endregion

// 	public void StartHostModified()
// 	{
// 		StartHost();
// 	}

// 	public override void OnStartHost()
// 	{
// 		base.OnStartHost();

// 		Debug.Log("Host Started!");
// 	}

// 	public void JoinGame(string networkAdressString)
// 	{
// 		networkAddress = networkAdressString;

// 		StartClient();
// 	}

// 	public override void OnStartClient(NetworkClient client)
// 	{
// 		base.OnStartClient(client);
	
// 		Debug.Log("Connected!");
// 	}

// 	public void ChangeScene()
// 	{
// 		ServerChangeScene(sceneName);
// 	}
// }	