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
		rightHand.SetActive(true);
		leftHand.SetActive(true);
	}

#endregion
}