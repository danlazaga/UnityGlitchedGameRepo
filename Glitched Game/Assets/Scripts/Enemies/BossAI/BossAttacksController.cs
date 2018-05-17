using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class BossAttacksController: NetworkBehaviour  {

  
    [SerializeField] private GameObject missile;
   
    [SerializeField] private GameObject shield;

    private BossStateController stateController;
    private BossHealth bossHealth;

    private void Awake()
    {
        stateController = GetComponent<BossStateController>();
        bossHealth = GetComponent<BossHealth>();

        if(stateController.testMode)
        {
            return;
        }
        bossHealth.UnlockDoubleSlam += UnlockDoubleSlamAttack;
        bossHealth.UnlockLaser += UnlockLaserAttack;
        bossHealth.UnlockMissile += UnlockMissileAttack;


    }
    private void OnDestroy()
    {
        bossHealth.UnlockDoubleSlam -= UnlockDoubleSlamAttack;
        bossHealth.UnlockLaser -= UnlockLaserAttack;
        bossHealth.UnlockMissile -= UnlockMissileAttack;
    }

#region UnlockAttacks
    void UnlockDoubleSlamAttack()
    {

        Debug.Log("Unlock DoubleSlam");
        stateController.maxAttacks = 2;
        bossHealth.UnlockDoubleSlam -= UnlockDoubleSlamAttack;

    }

    void UnlockLaserAttack()
    {
        Debug.Log("Unlock Laser Attack");
        stateController.maxAttacks = 3;
        bossHealth.UnlockLaser -= UnlockLaserAttack;
    }

    void UnlockMissileAttack()
    {
        Debug.Log("Unlock Laser Attack");
        stateController.maxAttacks = 4;
        bossHealth.UnlockMissile -= UnlockMissileAttack;
    }
    #endregion


#region SpawnAttacks
    [Command]
    public void CmdLaunchMissile()
    {
        // Missile SetActive
        missile.SetActive(true);
    }

   

    [Command]
    public void CmdSpawnShield()
    {
        // Set shield to active
        shield.SetActive(true);
    }


#endregion
    public void UnLaunchMissile()
    {
        // Missile SetActive
        missile.SetActive(false);
    }

   // remove after testing
    public void DeSpawnShield()
    {
        // Set shield to active
        shield.SetActive(false);
    }
}
