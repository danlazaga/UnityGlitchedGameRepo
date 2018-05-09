using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHitDamage : MonoBehaviour {

    [SerializeField] private float damage;

    private const int PLAYER_MASK = 9;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.layer == PLAYER_MASK)
        {
            Debug.Log("Player Hit");

            PlayerHealth myHealth = FindObjectOfType<PlayerHealth>();
            Debug.Log(myHealth);
            if(myHealth != null)
            {
                myHealth.TakeDamage(damage);
            }

        }
    }
}
