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

        if (health <= (maxHealth * 0.75))
        {
            if (UnlockDoubleSlam != null)
            {
                UnlockDoubleSlam();
            }
        }

        if (health <= (maxHealth * 0.6))
        {
            if (UnlockLaser != null)
            {
                UnlockLaser();
            }
        }

        if (health <= (maxHealth * 0.5))
        {
            if (UnlockMissile != null)
            {
                UnlockMissile();
            }
        }

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

   

    void SetToDestroy()
    {
        StartCoroutine(OnDeathEvent());
    }

    IEnumerator OnDeathEvent()
    {
        yield return new WaitForSeconds(10.0f);

        // open victory screen
        CmdGameOverScene();
    }

    [Command]
    void CmdGameOverScene()
    {
        RpcGameOverScreen();
    }

    [ClientRpc]
    void RpcGameOverScreen()
    {
        GameManager.Instance.GameOverScreen();
    }

}