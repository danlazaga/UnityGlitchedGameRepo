using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(ModifiedNetworkManager))]
public class NetworkHUD : MonoBehaviour
{
	[SerializeField] ModifiedNetworkManager networkManager;
	[SerializeField] InputField ipInput;

	private void OnEnable()
	{
		ipInput.onEndEdit.RemoveAllListeners();
		ipInput.onEndEdit.AddListener(onEndEditIP);
	}

	public void OnStartHost()
	{
		networkManager.StartHost();
	}

	public void OnClientJoin()
	{
		networkManager.networkAddress = ipInput.text;
		
		networkManager.StartClient();
	}

	void onEndEditIP(string text)
	{
		if (Input.GetKeyDown(KeyCode.Return))
		{
			OnClientJoin();
		}
	}
}