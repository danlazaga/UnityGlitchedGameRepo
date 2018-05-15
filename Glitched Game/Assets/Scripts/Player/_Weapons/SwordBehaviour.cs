using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordBehaviour : MonoBehaviour
{
	[SerializeField] Collider hitBox;
	[Space(10)]
	[SerializeField] GameObject rightController;
	SteamVR_TrackedObject trackedObject;
	SteamVR_Controller.Device device;

	private void Awake()
	{
		trackedObject = rightController.GetComponent<SteamVR_TrackedObject>();
	}
	// Update is called once per frame
	void Update()
	{
		device = SteamVR_Controller.Input((int)trackedObject.index);
		var velocity = device.velocity.magnitude;

		if(velocity > 2f)
		{
			hitBox.enabled = true;
		}
		else if(velocity < 2f)
		{
			hitBox.enabled = false;
		}
	}
}