using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class ShieldHealth : NetworkBehaviour, IHealthHandler
{
    [SerializeField] private float maxHealth;
    [SyncVar] private float health;

    public event Action<float> OnHPPctChanged;
    public event Action OnDied;

    [ServerCallback]
    private void OnEnable()
    {
        health = maxHealth;
        OnDied += OnShieldDestroy;
    }

    [Server]
    public bool TakeDamage(float amount)
    {
        bool died = false;

        amount -= health;
        if (health <= 0)
        {
            OnDied();
        }

        RpcTakeDamage();
        
        return died;
    }

    [ClientRpc]
    void RpcTakeDamage()
    {
        OnHPPctChanged(health);
    }

    void OnShieldDestroy()
    {
        gameObject.SetActive(false);
    }
}