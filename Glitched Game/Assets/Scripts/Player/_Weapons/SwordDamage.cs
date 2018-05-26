using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordDamage : MonoBehaviour
{
    private const int ENEMY_MASK = 9;
    private const int ENEMYARMS_MASK = 11;
    [SerializeField] private SwordEffects swordEffects;
    [SerializeField] private float damage;
    [SerializeField] float currentDamage;
    SwordBehaviour swordBehaviour;

    private void Start()
    {
        swordBehaviour = GetComponent<SwordBehaviour>();
        UpdateManager.Instance.toUpdate += HandleUpdate;
    }

    private void OnDestroy()
    {
        UpdateManager.Instance.toUpdate -= HandleUpdate;
    }

    private void HandleUpdate()
    {
        if (swordBehaviour.Velocity > 4)
        {
            currentDamage = damage * 1.2f;
        }
        else
        {
            currentDamage = damage;
        }

    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.layer == ENEMY_MASK)
        {

            //other.GetComponent<Animator>().SetTrigger("Flinch1");
            var enemy = other.GetComponent<IHealthHandler>();

            if (enemy != null)
            {
                enemy.TakeDamage(currentDamage);
                swordEffects.PlayImpact();
            }

        }
        else if (other.gameObject.layer == ENEMYARMS_MASK)
        {

            var boss = other.GetComponent<BossHitReceiver>();
            if (boss != null)
            {
                boss.ReceiveDamage(damage);
                swordEffects.PlayImpact();
            }
        }
    }
}