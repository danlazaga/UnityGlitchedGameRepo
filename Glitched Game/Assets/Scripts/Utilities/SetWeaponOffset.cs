using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetWeaponOffset : MonoBehaviour {

public Quaternion weaponOffset;

void OnEnable()
{
	this.transform.rotation = weaponOffset;
}


}
