using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class ChoosePlayerType : MonoBehaviour
{
#region Unity Methods
	public void PickHero(int hero)
	{
		NetworkManager.singleton.GetComponent<ModifiedNetworkManager>().chosenCharacter = hero;
	}
#endregion
}