using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;




public class OnSlamDamage : MonoBehaviour, IDamage
{
    [SerializeField] private float slamDamage;


    private const int PLAYER_MASK = 8;

    public void OnHitEffect()
    {
       
        throw new NotImplementedException();
    }

    public void OnTriggerEnter(Collider other)
    {
        throw new NotImplementedException();
    }
}
