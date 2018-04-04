using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoDestroy : MonoBehaviour 
{
#region Variables
	[SerializeField] float lifeTime;
#endregion

#region Unity Methods
	void Start () 
	{
	 	Destroy(this.gameObject, lifeTime);
	}
#endregion
}
