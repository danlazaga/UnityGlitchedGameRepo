using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightingScript : MonoBehaviour {

	private Renderer thisRenderer;
	
	// Use this for initialization
	void Start () {
		thisRenderer = GetComponent<Renderer>();
		//DynamicGI.updateThreshold = 0;
		
	}
	
	// Update is called once per frame
	void Update () {
		
		thisRenderer.UpdateGIMaterials();
	}
}
