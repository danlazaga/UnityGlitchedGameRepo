using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordDamage : MonoBehaviour
{
    private const int ENEMY_MASK = 9;
    [SerializeField] private SwordEffects swordEffects;
    [SerializeField] private float damage;

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.layer == ENEMY_MASK)
        {
            Debug.Log("Hit");
            var enemy = other.GetComponent<IHealthHandler>();

            if (enemy != null)
            {
                enemy.TakeDamage(damage);
                swordEffects.PlayImpact();
            }

        }
    }
}