using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Networking;

[System.Serializable]
public class ToggleEvent : UnityEvent<bool> { }

public class PlayerNetworkSetup : NetworkBehaviour
{
#region Variables
	GameObject mainCamera;
	[SerializeField] MeshRenderer playerMesh;
	[Space(25)]
	[SerializeField] ToggleEvent onToggleShared;
	[SerializeField] ToggleEvent onToggleLocal;
	[SerializeField] ToggleEvent onToggleRemote;

#endregion

#region Unity Methods

	void Start()
	{
		mainCamera = Camera.main.gameObject;

		EnablePlayer();
	}

	public override void OnStartLocalPlayer()
	{
		playerMesh.material.color = Color.green;
		Screen.orientation = ScreenOrientation.LandscapeLeft;
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