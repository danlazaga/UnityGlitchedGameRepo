using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HTCHUDCameraSetter : MonoBehaviour
{
	public Canvas htcCanvas;

	private void Start()
	{
		htcCanvas.worldCamera = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
	}
}