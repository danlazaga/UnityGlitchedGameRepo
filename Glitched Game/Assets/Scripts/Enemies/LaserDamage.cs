using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserDamage : MonoBehaviour {

    [SerializeField] private float laserDamage;

    private const int PLAYER_MASK = 8;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.layer == 8)
        {
            PlayerHealth health = other.GetComponent<PlayerHealth>();

            if(health != null)
            {
                health.TakeDamage(laserDamage);
            }
        }
    }
}
