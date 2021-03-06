﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnSlamDamage : MonoBehaviour
{

    [SerializeField] private float slamDamage;

    private const int PLAYER_MASK = 8;

    public void OnHitEffect()
    {
        throw new NotImplementedException();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.layer == PLAYER_MASK)
        {
            var myHealth = other.transform.GetComponentInParent<IHealthHandler>();
            if (myHealth != null)
            {
                myHealth.TakeDamage(slamDamage);
            }

        }
    }

}