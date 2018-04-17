using UnityEngine.Networking;
using UnityEngine.UI;

public class LobbyPlayer : NetworkLobbyPlayer
{
	public Button readyButton;

	public override void OnClientEnterLobby()
	{
		LobbyPlayerList.Instance.AddPlayer(this);
	}
}