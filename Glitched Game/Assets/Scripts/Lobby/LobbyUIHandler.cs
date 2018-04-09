using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LobbyUIHandler : MonoBehaviour
{
#region Variables
	[SerializeField] Button lobbyButton;
	string networkToJoin;
#endregion

#region Unity Methods
	private void Awake()
	{
		if (lobbyButton != null)
			lobbyButton.onClick.AddListener(()=> OnServerAddPlayer());
	}
#endregion

	private void OnServerAddPlayer()
	{
#if UNITY_ANDROID
		ModifiedNetworkLobbyManager.Instance.JoinGame(networkToJoin);
		print(networkToJoin);
#else
		ModifiedNetworkLobbyManager.Instance.StartHostModified();
		print("this is host!");
#endif
	}
}