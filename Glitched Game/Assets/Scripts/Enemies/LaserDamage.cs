using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserDamage : MonoBehaviour {

    [SerializeField] private float laserDamage;

    private const int PLAYER_MASK = 8;

    private void OnTriggerEnter(Collider other)
    {
		if (other.gameObject.layer == PLAYER_MASK)
        {
            Debug.Log("isHit");
			var myHealth = other.transform.GetComponentInParent<IHealthHandler>();
			if(myHealth != null)
			{
				myHealth.TakeDamage(laserDamage);
			}
        }
    }
}
