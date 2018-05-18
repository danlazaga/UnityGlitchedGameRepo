using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHitDamage : MonoBehaviour {

    [SerializeField] private float damage;

    private const int PLAYER_MASK = 8;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.layer == PLAYER_MASK)
        {
            
            PlayerHealth myHealth = FindObjectOfType<PlayerHealth>();
            if(myHealth != null)
            {
                myHealth.TakeDamage(damage);
            }

        }
    }
}
