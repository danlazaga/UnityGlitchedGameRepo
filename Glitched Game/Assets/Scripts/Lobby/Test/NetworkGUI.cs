using System;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class NetworkGUI : MonoBehaviour
{
	public Button startHostButton;
	public Button joinGameButton;
	public InputField ipInputField;

	private void Awake()
	{
		if (startHostButton != null)
		{
			startHostButton.onClick.AddListener(()=> OnStartButton());
		}

		if (joinGameButton != null)
		{
			joinGameButton.onClick.AddListener(()=> OnJoinGame());
		}
	}

	private void Start()
	{
		startHostButton.gameObject.SetActive(true);
		joinGameButton.gameObject.SetActive(true);
		ipInputField.gameObject.SetActive(true);
	}

	private void OnStartButton()
	{
		NetworkManagerModified.ManagerInstance.StartHostModified();
		CloseUI();
	}

	private void OnJoinGame()
	{
		NetworkManagerModified.ManagerInstance.JoinGame(ipInputField.text);
		CloseUI();
	}

	void CloseUI()
	{
		startHostButton.gameObject.SetActive(false);
		joinGameButton.gameObject.SetActive(false);
		ipInputField.gameObject.SetActive(false);
	}
}