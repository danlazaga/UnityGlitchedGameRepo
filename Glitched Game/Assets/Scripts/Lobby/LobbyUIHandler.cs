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
		ModifiedNetworkLobbyManager.Instance.JoinGame(ipAddressInputField.text);
#else
		ModifiedNetworkLobbyManager.Instance.StartHostModified();
#endif
	}

	private void OnReadyButton()
	{
		readyChecker++;
		readyButton.gameObject.SetActive(false);
		FindLobbyPlayers();

		// if (lobbyPlayerList._playerList.Count >= 2 && readyChecker == lobbyPlayerList._playerList.Count)
		// {
		// 	ModifiedNetworkLobbyManager.Instance.ChangeScene();
		// 	Debug.Log("Success!");
		// }
	}

	void FindLobbyPlayers()
	{
		for (int i = 0; i < lobbyPlayerList._playerList.Count; i++)
		{
			LobbyPlayer player = lobbyPlayerList._playerList[i].GetComponent<LobbyPlayer>();

			if (player.isLocalPlayer)
			{
				player.GetComponent<NetworkHUDBridge>().PostMessage(player.gameObject);

				if (NetworkServer.connections.Count > 0)
				{
					startButton.gameObject.SetActive(true);
					print ("Host Start Button Success!");
				}
			}
		}
	}
}