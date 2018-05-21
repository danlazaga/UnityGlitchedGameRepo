using System;
using UnityEngine;
using UnityEngine.Networking;

/// <summary>
/// Generic Health
/// </summary>
public class Health : NetworkBehaviour, IHealthHandler
{

#region Variables
    public float maxHealth = 100f;
    [SyncVar] float health;

    public event Action<float> OnHPPctChanged = delegate(float f) { };
    public event Action OnDied = delegate { };
#endregion

#region Unity Methods
    [ServerCallback]
    private void OnEnable()
    {
        health = maxHealth;
    }
#endregion

    [Server]
    public bool TakeDamage(float damage)
    {
        bool died = false;

        if (damage <= 0)
        {
            throw new ArgumentOutOfRangeException("Invalid Damage amount specified: " + damage);
        }

        if (health <= 0)
        {
            return died;
        }

        health -= damage;

        if (health <= 0)
            OnDied();

        RpcTakeDamage();

        return died;
    }

    [ClientRpc]
    void RpcTakeDamage()
    {
        OnHPPctChanged(health);
    }
}