using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutoriaManager : MonoBehaviour
{
	[SerializeField] Camera mainCamera;
	[SerializeField] GameObject viveGameObject;
	[SerializeField] GameObject mobileGameObject;
	[SerializeField] Transform startPos;
	[SerializeField] GameObject enemySpawner;

	void Awake() 
	{
// #if UNITY_PC 
		Instantiate(viveGameObject, startPos.position, startPos.rotation);
		viveGameObject.SetActive(true);	
// #elif UNITY_ANDROID || UNITY_IOS
// 		Instantiate(mobileGameObject, startPos.position, startPos.rotation);	
// #endif
	}
}