using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyAttackHandler : MonoBehaviour {

    public Collider attackCollider;

	public void OpenAttackCollider()
    {
        attackCollider.enabled = true;
    }
    public void CloseAttackCollider()
    {
        attackCollider.enabled = false;
    }
}
