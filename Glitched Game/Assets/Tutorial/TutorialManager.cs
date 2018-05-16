using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialManager : MonoBehaviour
{
	[SerializeField] GameObject mainCamera;
	[SerializeField] GameObject viveGameObject;
	//[SerializeField] GameObject mobileGameObject;
	[SerializeField] GameObject boss;
	[SerializeField] Transform startPos;
	//[SerializeField] Transform mobileStartPos;

	void Awake() 
	{
// #if UNITY_PC 
		Instantiate(viveGameObject, startPos.position, startPos.rotation);
		viveGameObject.SetActive(true);	
// #elif UNITY_ANDROID || UNITY_IOS
// 		Instantiate(mobileGameObject, startPos.position, startPos.rotation);
//		mobileGameObject.SetActive(true);	
// #endif
		mainCamera = Camera.main.gameObject;
		mainCamera.SetActive(false);
		boss.GetComponent<TutorialBossAi>().changeState = true;
	}
}