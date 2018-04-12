using System;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class LobbyUIHandler : NetworkBehaviour
{
#region Variables
	[SerializeField] LobbyPlayerList lobbyPlayerList;

	[SerializeField] Button lobbyButton;

	[SerializeField] InputField ipAddressInputField;

	[SerializeField] Button readyButton;

	[SerializeField] Button startButton;

	int readyChecker;
#endregion

#region Unity Methods
	private void Awake()
	{
		if (lobbyButton != null)
		{
			lobbyButton.onClick.AddListener(()=> OnServerAddPlayer());
		}

		if (readyButton != null)
		{
			readyButton.onClick.AddListener(()=> OnReadyButton());
		}

		if (startButton != null)
		{
			startButton.onClick.AddListener(()=> OnStartGame());
		}

#if UNITY_ANDROID
		ipAddressInputField.gameObject.SetActive(true);
#else 
		ipAddressInputField.gameObject.SetActive(false);
#endif
	}
#endregion

	private void OnServerAddPlayer()
	{
#if UNITY_ANDROID
		//ModifiedNetworkLobbyManager.Instance.JoinGame(ipAddressInputField.text);
		print(ipAddressInputField.text);
#else
		ModifiedNetworkLobbyManager.Instance.StartHostModified();
#endif
	}

	private void OnReadyButton()
	{
		readyChecker++;
		readyButton.gameObject.SetActive(false);
		FindLobbyPlayers();

		if (lobbyPlayerList._playerList.Count >= 2 && readyChecker == lobbyPlayerList._playerList.Count)
		{
			if (NetworkServer.connections.Count > 0)
			{
				startButton.gameObject.SetActive(true);
			}
		}
	}

	private void OnStartGame()
	{
		//ModifiedNetworkLobbyManager.Instance.ChangeScene();
	}

	void FindLobbyPlayers()
	{
		for (int i = 0; i < lobbyPlayerList._playerList.Count; i++)
		{
			LobbyPlayer player = lobbyPlayerList._playerList[i].GetComponent<LobbyPlayer>();

			if (player.hasAuthority)
			{
				player.GetComponent<NetworkHUDBridge>().PostMessage(player.gameObject);
			}
		}
	}
}