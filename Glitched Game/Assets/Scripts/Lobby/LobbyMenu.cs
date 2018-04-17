using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LobbyMenu : MonoBehaviour
{
#region Variables
	public ModifiedNetworkLobbyManager lobbyManager;
	[Header("UI REFERENCES")]
	public RectTransform lobbyPanel;
	public InputField ipInput;
#endregion

#region Unity Methods
	private void OnEnable()
	{
		ipInput.onEndEdit.RemoveAllListeners();
		ipInput.onEndEdit.AddListener(onEndEditIP);
	}
#endregion

	public void OnClickHost()
	{
		lobbyManager.StartHost();
	}

	public void OnClickJoin()
	{
		lobbyManager.ChangeTo(lobbyPanel);

		lobbyManager.networkAddress = ipInput.text;
		lobbyManager.StartClient();
	}

	void onEndEditIP(string text)
	{
		if (Input.GetKeyDown(KeyCode.Return))
		{
			OnClickJoin();
		}
	}
}