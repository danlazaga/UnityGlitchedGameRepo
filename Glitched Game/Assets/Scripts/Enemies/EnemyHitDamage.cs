using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHitDamage : MonoBehaviour
{

    [SerializeField] private float damage;

    private const int PLAYER_MASK = 8;
    private const int GATE_MASK = 12;

    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.layer == PLAYER_MASK || other.gameObject.layer == GATE_MASK)
        {
            var health = other.transform.GetComponentInParent<IHealthHandler>();
    
            if (health != null)
            {
                health.TakeDamage(damage);
            }
        }
    }
}