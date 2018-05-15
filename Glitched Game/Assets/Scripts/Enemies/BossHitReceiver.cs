using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossHitReceiver : MonoBehaviour {

    [SerializeField] private BossHealth bossHealth;


    public void ReceiveDamage(float damage)
    {
        if(bossHealth != null)
            bossHealth.TakeDamage(damage);
    }
}
