using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class BossAttacksController: NetworkBehaviour  {

    //public delegate void LaunchMissile(Transform target);
    //public delegate void LaunchLaser();

    [SerializeField] private GameObject missile;
    [SerializeField] private GameObject laser;
    [SerializeField] private GameObject shield;

    private BossStateController stateController;
    private BossHealth bossHealth;

    private void Awake()
    {
        stateController = GetComponent<BossStateController>();
        bossHealth = GetComponent<BossHealth>();

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

    [Command]
    public void CmdLaunchMissile()
    {
        // Missile SetActive
        missile.SetActive(true);
    }

    [Command]
    public void CmdLaunchLaser()
    {
        //Laser SetActive
        laser.SetActive(true);
    }

    [Command]
    public void CmdSpawnShield()
    {
        // Set shield to active
        shield.SetActive(true);
    }
}
