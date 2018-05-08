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
            other.GetComponent<PlayerHealth>().TakeDamage(damage);
        }
    }
}
