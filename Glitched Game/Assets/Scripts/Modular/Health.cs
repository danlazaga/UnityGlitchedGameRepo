using System;
using UnityEngine;
using UnityEngine.Networking;

/// <summary>
/// Generic Health
/// </summary>
public class Health : NetworkBehaviour, IHealth
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
    public void TakeDamage(float damage)
    {
        if (damage <= 0)
        {
            throw new ArgumentOutOfRangeException("Invalid Damage amount specified: " + damage);
        }

        if (health <= 0)
        {
            return;
        }

        health -= damage;

        if (health <= 0)
            OnDied();

        RpcTakeDamage();
    }

    [ClientRpc]
    void RpcTakeDamage()
    {
        OnHPPctChanged(health);
    }
}