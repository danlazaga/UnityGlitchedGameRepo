using UnityEngine;
using UnityEngine.Events;

public class TutorialPlayerSetup : MonoBehaviour
{
#region Variables
	GameObject mainCamera;
	[SerializeField] GameObject playerCamera;
	[SerializeField] GameObject rightHand;
	[SerializeField] GameObject leftHand;

#endregion

#region Unity Methods

	void Start()
	{
		mainCamera = Camera.main.gameObject;

		EnablePlayer();
	}

#endregion

	void EnablePlayer()
	{
		mainCamera.SetActive(false);
		playerCamera.SetActive(true);
		rightHand.SetActive(true);
		leftHand.SetActive(true);
	}
}