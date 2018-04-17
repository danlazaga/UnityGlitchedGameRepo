using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class ModifiedNetworkLobbyManager : NetworkLobbyManager
{
#region  Variable & Instance
	[SerializeField] string sceneName;
	[Space(10)]
	public RectTransform mainMenuPanel;
	public RectTransform lobbyPanel;
	public RectTransform startButton;
	public Button backButton;
	RectTransform currentPanel;
	LobbyHook lobbyHooks;
	[Space(10)]
	public Color[] colorArray;
	[HideInInspector] public int currentPlayerColor = 0;

	private static ModifiedNetworkLobbyManager instance;
	public static ModifiedNetworkLobbyManager Instance
	{
		get
		{
			return instance;
		}
	}
#endregion

#region Unity Methods 
	void Awake()
	{
		instance = this;
	}

	void Start()
	{
		lobbyHooks = GetComponent<LobbyHook>();
		currentPanel = mainMenuPanel;
	}

	// ---------- Server Callback
	public override void OnStartHost()
	{
		base.OnStartHost();
		ChangeTo(lobbyPanel);
		startButton.gameObject.SetActive(true);
		Debug.Log("Host Started!");
	}

	public override bool OnLobbyServerSceneLoadedForPlayer(GameObject lobbyPlayer, GameObject gamePlayer)
	{
		//This hook allows you to apply state data from the lobby-player to the game-player
		//just subclass "LobbyHook" and add it to the lobby object.
		Debug.Log("Player Data Hooked");

		if (lobbyHooks)
			lobbyHooks.OnLobbyServerSceneLoadedForPlayer(this, lobbyPlayer, gamePlayer);

		return true;
	}

	public override void OnLobbyClientSceneChanged(NetworkConnection conn)
	{
		if (SceneManager.GetSceneAt(0).name == lobbyScene)
		{
			ChangeTo(lobbyPanel);
		}
		else
		{
			ChangeTo(null);
		}

		if (currentPanel != mainMenuPanel)
		{
			backButton.gameObject.SetActive(true);
		}
		else
		{
			backButton.gameObject.SetActive(false);
		}
	}

	//------ Client Callback
	public override void OnClientConnect(NetworkConnection conn)
	{
		base.OnClientConnect(conn);

		Debug.Log("Client Joined");
		if (!NetworkServer.active)
		{
			ChangeTo(lobbyPanel);
		}
	}
#endregion

	public void ChangeScene()
	{
		ServerChangeScene(sceneName);
	}

	public void ChangeTo(RectTransform newPanel)
	{
		if (currentPanel != null)
		{
			currentPanel.gameObject.SetActive(false);
		}

		if (newPanel != null)
		{
			newPanel.gameObject.SetActive(true);
		}

		currentPanel = newPanel;
	}
}