using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;

public class NetworkHUDBridge : NetworkBehaviour
{
	[Client]
	public void PostMessage(GameObject msg)
	{
		CmdPostMessage(msg);
	}

	[Command]
	private void CmdPostMessage(GameObject msg)
	{
		ReadyTextShow(msg);
	}

	public void ReadyTextShow(GameObject readyText)
	{
		RpcReadyTextShow(readyText);
	}	

	[ClientRpc]
	public void RpcReadyTextShow(GameObject readyText)
	{
		LobbyPlayer obj = readyText.GetComponent<LobbyPlayer>();
		obj.text.text = "Player is Ready!";
		obj.text.gameObject.SetActive(true);
	}
}