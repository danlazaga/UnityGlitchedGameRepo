using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Networking;

[System.Serializable]
public class ToggleEvent : UnityEvent<bool> { }

public class PlayerNetworkSetup : NetworkBehaviour
{
#region Variables
	[SerializeField] ToggleEvent onToggleShared;
	[SerializeField] ToggleEvent onToggleLocal;
	[SerializeField] ToggleEvent onToggleRemote;
	[SerializeField] GameObject mainCamera;

#endregion

#region Unity Methods

	void Start()
	{
		mainCamera = Camera.main.gameObject;

		EnablePlayer();
	}

	public override void OnStartLocalPlayer()
	{
		GetComponentInChildren<MeshRenderer>().material.color = Color.green;
	}

#endregion

	void EnablePlayer()
	{
		if (isLocalPlayer)
		{
			mainCamera.SetActive(false);
		}

		onToggleShared.Invoke(true);

		if (isLocalPlayer)
		{
			onToggleLocal.Invoke(true);
		}
		else
		{
			onToggleRemote.Invoke(true);
		}
	}

	void DisablePlayer()
	{
		if (isLocalPlayer)
		{
			mainCamera.SetActive(true);
		}

		onToggleShared.Invoke(false);

		if (isLocalPlayer)
		{
			onToggleLocal.Invoke(false);
		}
		else
		{
			onToggleRemote.Invoke(false);
		}
	}
}