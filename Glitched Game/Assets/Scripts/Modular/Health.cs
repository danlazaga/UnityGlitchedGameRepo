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

        if (health <= 0)
        {
            return died;
        }

        health -= damage;
        died = health <= 0;

        OnHPPctChanged(damage); // changed for the meantime, need something to determine what weapon is                                 used to damage the enemy, in order to use right effect
        RpcTakeDamage(died);

        return died;
    }

    [ClientRpc]
    void RpcTakeDamage(bool died)
    {
        //OnHPPctChanged(health);

        if (died)
        {
            if (OnDied != null)
            {
                OnDied();
            }
        }
    }
}