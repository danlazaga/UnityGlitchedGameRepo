using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class GateHealth : NetworkBehaviour, IHealthHandler
{

    [SerializeField] float maxHealth = 100;
    [SyncVar(hook = "OnHealthChanged")] float health;
    public event Action<float> OnHPPctChanged = delegate(float f) { };
    public event Action OnDied = delegate { };

#region Unity Methods

    [ServerCallback]
    void OnEnable()
    {
        health = maxHealth;
        OnDied += OnDeath;
    }

    public override void OnStartClient()
    {
        OnHealthChanged(health);
    }
#endregion

    [Server]
    public bool TakeDamage(float amount)
    {
        bool died = false;

        if (amount <= 0)
            throw new ArgumentOutOfRangeException("Invalid Damage amount specified: " + amount);

        if (health <= 0)
            return died;

        health -= amount;

        died = health <= 0;

        RpcTakeDamage(died);

        return died;
    }

    [ClientRpc]
    void RpcTakeDamage(bool died)
    {
        OnHPPctChanged(health);

        // Insert hit display effect
        PlayerHUD.Instance.FlashDamageEffect();

        if (died)
            OnDied();
    }

    void OnHealthChanged(float value)
    {
        health = value;
        PlayerHUD.Instance.SetGateHealth(value);

    }

    void OnDeath()
    {
        Debug.Log("Gate Destroyed");
        GameManager.Instance.GameOverScreen();
    }
}