using UnityEngine;
using UnityEngine.Events;

public class TutorialPlayerSetup : MonoBehaviour
{
#region Variables
	[SerializeField] GameObject rightHand;
	[SerializeField] GameObject leftHand;

#endregion

#region Unity Methods

	void Start()
	{
		EnableRightHand();
	}

#endregion

	void EnableRightHand()
	{
		rightHand.SetActive(true);
	}

	void EnableLeftHand()
	{
		leftHand.SetActive(true);
	}
}