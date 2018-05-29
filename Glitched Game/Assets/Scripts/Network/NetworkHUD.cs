using System;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

[RequireComponent(typeof(ModifiedNetworkManager))]
public class NetworkHUD : MonoBehaviour
{
	ModifiedNetworkManager manager;
	[SerializeField] InputField ipInput;
	[SerializeField] Text ipAddress;
	[Space(10)]
	[SerializeField] GameObject hudVive;
	[SerializeField] GameObject hudMobile;
	[SerializeField] GameObject connectingPanel;

#region Unity Methods
	private void Awake()
	{
		manager = GetComponent<ModifiedNetworkManager>();
	}
	private void Start()
	{
		// #if UNITY_ANDROID || UNITY_IOS
		// 		hudVive.SetActive(false);
		// #else 
		// 		hudMobile.SetActive(false);
		// #endif
		SoundManager.Instance.PlayBGM(0);
	}

	private void Update()
	{
		bool noConnection = (manager.client == null || manager.client.connection == null ||
			manager.client.connection.connectionId == -1);

		if (!manager.IsClientConnected()&& !NetworkServer.active)
		{
			if (noConnection)
			{
#if UNITY_ANDROID || UNITY_IOS
				hudVive.SetActive(false);
				connectingPanel.SetActive(false);
				hudMobile.SetActive(true);
#else 
				hudMobile.SetActive(false);
#endif
			}
			else
			{
				hudMobile.SetActive(false);
				connectingPanel.SetActive(true);
				ipAddress.text = "Connecting to " + manager.networkAddress + " : " + manager.networkPort + "..";
			}
		}

		if (NetworkServer.active || manager.IsClientConnected())
		{
#if UNITY_ANDROID || UNITY_IOS
			hudMobile.SetActive(false);
			connectingPanel.SetActive(false);
#else
			hudVive.SetActive(false);
#endif
		}
	}

#endregion


	public void OnStartHost()
	{
		if (!manager.IsClientConnected()&& !NetworkServer.active)
		{
			SoundManager.Instance.PlayBGM(1);
			manager.StartHost();
		}
	}

	public void OnClientJoin()
	{
		SoundManager.Instance.PlayBGM(1);

		manager.networkAddress = ipInput.text;
		manager.StartClient();
	}

	public void OnStopHost()
	{
		if (NetworkServer.active || manager.IsClientConnected())
		{
			SoundManager.Instance.PlayBGM(0);
			manager.StopHost();
		}
	}

	//Try to Connect to Server
	public void OnStopClient()
	{
		SoundManager.Instance.PlayBGM(0);
		manager.StopClient();
	}
}