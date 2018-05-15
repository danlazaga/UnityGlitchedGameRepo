using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutoriaManager : MonoBehaviour
{
	[SerializeField] GameObject viveGameObject;
	[SerializeField] GameObject mobileGameObject;
	[SerializeField] Transform startPos;
	[SerializeField] Transform mobileStartPos;
	[SerializeField] GameObject enemySpawner;

	void Awake() 
	{
// #if UNITY_PC 
		Instantiate(viveGameObject, startPos.position, startPos.rotation);
		viveGameObject.SetActive(true);	
// #elif UNITY_ANDROID || UNITY_IOS
// 		Instantiate(mobileGameObject, mobileStartPos.position, mobileStartPos.rotation);
//      mobileGameObject.SetActive(true);	
// #endif
	}

	
}