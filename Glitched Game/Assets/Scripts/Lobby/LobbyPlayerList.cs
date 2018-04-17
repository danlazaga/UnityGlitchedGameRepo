using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LobbyPlayerList : Singleton<LobbyPlayerList>
{
#region Variables
	public List<LobbyPlayer> _playerList = new List<LobbyPlayer>();
	[SerializeField] Transform vrPlayerTransform;
	[SerializeField] Transform mobilePlayersTransform;
	
	private void Awake()
	{
		instance = this;
	}
#endregion

	public void AddPlayer(LobbyPlayer player)
	{
		if (player == null)
		{
			throw new NotImplementedException();
		}

		if (_playerList.Contains(player))
			return;

		ChangePlayerColor(player);

		_playerList.Add(player);

		player.transform.SetParent(vrPlayerTransform, false);

		if (_playerList.Count > 1)
		{
			player.transform.SetParent(mobilePlayersTransform, false);
		}
	}

    void ChangePlayerColor(LobbyPlayer player)
	{
		player.gameObject.GetComponent<Image> ().color = ModifiedNetworkLobbyManager
			.Instance
			.colorArray [ModifiedNetworkLobbyManager.Instance.currentPlayerColor];

		ModifiedNetworkLobbyManager.Instance.currentPlayerColor++;
	}
}