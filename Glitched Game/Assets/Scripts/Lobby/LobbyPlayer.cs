using UnityEngine.UI;
using UnityEngine.Networking;

public class LobbyPlayer : NetworkLobbyPlayer
{
#region Variables
	private LobbyPlayerList lobbyPlayerList;

	public Text text;
#endregion

	void OnEnable()
	{
		lobbyPlayerList = FindObjectOfType<LobbyPlayerList>();
	}
	
	public override void OnClientEnterLobby()
	{
		base.OnClientEnterLobby();

		lobbyPlayerList.AddPlayer(this);
	}
}