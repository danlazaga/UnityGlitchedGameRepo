using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

public class BossHealth : NetworkBehaviour, IHealthHandler
{
    
#region Variables
    public float maxHealth = 100f;
    [SyncVar] float health;

    public event Action<float> OnHPPctChanged = delegate(float f) { };
    public event Action OnDied = delegate { };

    public delegate void OnHitHPCheck();
    public event OnHitHPCheck UnlockDoubleSlam;
    public event OnHitHPCheck UnlockLaser;
    public event OnHitHPCheck UnlockMissile;

#endregion

#region Unity Methods
    [ServerCallback]
    private void OnEnable()
    {
        health = maxHealth;
        OnDied += SetToDestroy;
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

        if (health <= (maxHealth * 0.6))
        {
            if (UnlockDoubleSlam != null)
            {
                UnlockDoubleSlam();
            }
        }

        if (health <= (maxHealth * 0.5))
        {
            if (UnlockLaser != null)
            {
                UnlockLaser();
            }
        }

        if (health <= (maxHealth * 0.4))
        {
            if (UnlockMissile != null)
            {
                UnlockMissile();
            }
        }

        if (health <= 0)
            OnDied();

        RpcTakeDamage();
    }

    [ClientRpc]
    void RpcTakeDamage()
    {
        OnHPPctChanged(health);
    }

    private void Update()
    {
        if(Input.GetButtonDown("Jump"))
        {
            TakeDamage(100);
        }
    }

    void SetToDestroy()
    {
        StartCoroutine(OnDeathEvent());
    }

    IEnumerator OnDeathEvent()
    {
        yield return new WaitForSeconds(10.0f);

        // open victory screen
		GameManager.Instance.GameOverScreen();
    }

    
}