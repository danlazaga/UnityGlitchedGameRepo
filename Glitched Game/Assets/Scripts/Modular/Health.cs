using System;
using UnityEngine;
using UnityEngine.Networking;

/// <summary>
/// Generic Health
/// </summary>
public class Health : NetworkBehaviour, IHealthHandler, IStunHandler
{

#region Variables
    public float maxHealth = 100f;
    [SyncVar] float health;

    
    WaitForSeconds stunDuration = new WaitForSeconds(1f);


    public event Action<float> OnHPPctChanged = delegate(float f) { };
    public event Action OnDied = delegate { };
    public event Action<float> OnStun;
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

    public void TakeStun(float duration)
    {
        
    }
}