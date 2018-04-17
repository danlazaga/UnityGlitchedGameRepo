using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class LobbyPlayer : NetworkLobbyPlayer
{
	public Button readyButton;
	static Color TransparentColor = new Color(0, 0, 0, 0);


	public override void OnClientEnterLobby()
	{
		base.OnClientEnterLobby();

		LobbyPlayerList.Instance.AddPlayer(this);

		if (isLocalPlayer)
		{
			SetupLocalPlayer();
		}
		else
		{
			SetupOtherPlayer();
		}
	}

	public override void OnStartAuthority()
	{
		base.OnStartAuthority();

		//if we return from a game, color of text can still be the one for "Ready"
		readyButton.transform.GetChild(0).GetComponent<Text>().color = Color.black;

		SetupLocalPlayer();
	}

	void ChangeReadyButtonColor(Color c)
	{
		ColorBlock b = readyButton.colors;
		b.normalColor = c;
		b.pressedColor = c;
		b.highlightedColor = c;
		b.disabledColor = c;
		readyButton.colors = b;
	}

	void SetupOtherPlayer()
	{
		//ChangeReadyButtonColor(NotReadyColor);
		ChangeReadyButtonColor(Color.black);

		readyButton.transform.GetChild(0).GetComponent<Text>().text = "...";
		readyButton.interactable = false;

		OnClientReady(false);
	}

	void SetupLocalPlayer()
	{
		//ChangeReadyButtonColor(JoinColor);
		ChangeReadyButtonColor(Color.white);

		readyButton.transform.GetChild(0).GetComponent<Text>().text = "Ready";
		readyButton.interactable = true;

		readyButton.onClick.RemoveAllListeners();
		readyButton.onClick.AddListener(OnReadyClicked);
	}

	public override void OnClientReady(bool readyState)
	{
		if (readyState)
		{
			ChangeReadyButtonColor(TransparentColor);

			Text textComponent = readyButton.transform.GetChild(0).GetComponent<Text>();
			textComponent.text = "Player is Ready";
			textComponent.color = Color.white;
			readyButton.interactable = false;
		}
		else
		{
			ChangeReadyButtonColor(isLocalPlayer ? Color.white : Color.black);

			Text textComponent = readyButton.transform.GetChild(0).GetComponent<Text>();
			textComponent.text = isLocalPlayer ? "Ready" : "Is Not Ready";
			textComponent.color = Color.white;
			readyButton.interactable = isLocalPlayer;
		}
	}

	//===== UI Handler

	//Note that those handler use Command function, as we need to change the value on the server not locally
	//so that all client get the new value throught syncvar

	public void OnReadyClicked()
	{
		SendReadyToBeginMessage();
	}

	private void OnDestroy()
	{
		LobbyPlayerList.Instance.RemovePlayer(this);
	}
}