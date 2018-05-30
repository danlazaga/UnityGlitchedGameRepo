using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class EnemySpawner : NetworkBehaviour
{
    public Transform[] spawnLocations;
    private bool canSpawn = false;

    [Header("Spawn Properties")]
    // maximum wave amount
    public int maxWaveAmount;

    // current wave amount
    private int waveAmount = 0;

    // maximum spawn interval
    [SerializeField] private float maxSpawnRate;
    // current spawn rate
    private float spawnRate;

    // Player Wait Time before next wave
    private WaitForSeconds waitTime = new WaitForSeconds(10f);

    // Minimum and maximum Spawn addition
    private int minAddSpawn;
    private int maxAddSpawn;


#region Unity Methods
    public override void OnStartServer()
    {
        maxWaveAmount = 5;
        maxSpawnRate = 3f;

        minAddSpawn = 4;
        maxAddSpawn = 9;

        GameManager.Instance.onForceSpawn += OnShieldSpawn;

        HandleStartSpawn();
    }

    private void Update()
    {
        if (!isServer)
            return;

        if (canSpawn)
        {
            spawnRate += Time.deltaTime;
            if (spawnRate >= maxSpawnRate)
            {
                CmdSpawnEnemy();
                spawnRate = 0;
            }
            if (waveAmount >= maxWaveAmount)
            {
                canSpawn = false;
                waveAmount = 0;

                StartCoroutine(IncreaseSpawn());
            }

        }
    }
#endregion

    void HandleStartSpawn()
    {
        StartCoroutine(IncreaseSpawn());
    }

    IEnumerator IncreaseSpawn()
    {
        int amount = Random.Range(minAddSpawn, maxAddSpawn);
        maxWaveAmount += amount;

        yield return waitTime;

        Debug.Log("Resume, New Wave Amount: " + maxWaveAmount);

        canSpawn = true;
    }

    // Spawn Enemy Randomly
    [Command]
    void CmdSpawnEnemy()
    {
        GameObject obj = EnemyPool.Instance.GetFromPool(spawnLocations[RandomizeSpawnSlot()].position);
        NetworkServer.Spawn(obj, EnemyPool.Instance.assetId);
    }

    int RandomizeSpawnSlot()
    {
        int slot = Random.Range(0, spawnLocations.Length);
        return slot;
    }

#region ShieldEvent
    public void OnShieldSpawn()
    {
        StartCoroutine(SpawnMobs());
    }

    IEnumerator SpawnMobs()
    {
        int wAmount = maxWaveAmount;
        waveAmount = 0;
        maxWaveAmount = 15;
        maxSpawnRate = 1.1f;
        canSpawn = true;

        yield return new WaitForSeconds(10f);

        maxSpawnRate = 3f;
        maxWaveAmount = wAmount;

    }

#endregion

}