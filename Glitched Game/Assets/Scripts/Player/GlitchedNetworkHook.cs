using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class GlitchedNetworkHook : LobbyHook
{
#region Unity Methods
	public override void OnLobbyServerSceneLoadedForPlayer(NetworkManager manager, GameObject lobbyPlayer, GameObject gamePlayer)
	{
		LobbyPlayer lPlayer = lobbyPlayer.GetComponent<LobbyPlayer>();
		PlayerNetworkSetup gPlayer = gamePlayer.GetComponent<PlayerNetworkSetup>();

		gPlayer.name = lPlayer.name;
	}
#endregion
}