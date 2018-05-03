using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordDamage : MonoBehaviour, IDamage
{
	private const int ENEMY_MASK = 9;

	[SerializeField] private float damage;
 

    public void OnHitEffect()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.layer == ENEMY_MASK)
	   {
		   Debug.Log("Hit");
		   other.GetComponent<IHealth>().TakeDamage(damage);
	   }
    }
}
