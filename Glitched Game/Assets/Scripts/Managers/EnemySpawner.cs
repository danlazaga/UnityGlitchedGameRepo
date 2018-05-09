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

    private GameObject player;
    private GameObject gate;

#region Unity Methods
    public override void OnStartServer()
    {
        maxWaveAmount = 5;
        maxSpawnRate = 10f;

        minAddSpawn = 1;
        maxAddSpawn = 3;

        HandleStartSpawn();
    }

    private void Update()
    {
        if(!isServer) 
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
        gate = GameObject.FindGameObjectWithTag("Gate");

        StartCoroutine(IncreaseSpawn());
    }

    IEnumerator IncreaseSpawn()
    {
        int amount = Random.Range(minAddSpawn, maxAddSpawn);
        maxWaveAmount += amount;

        yield return waitTime;

        Debug.Log("Resume, New Wave Amount: " + maxWaveAmount);
        player = GameObject.FindGameObjectWithTag("MainCamera");
        canSpawn = true;
    }

    // Spawn Enemy Randomly
    [Command]
    void CmdSpawnEnemy()
    {
        GameObject obj = ObjectPool.Instance.GetPooledObject("Enemy");

        obj.GetComponent<EnemyStateController>().SetTargets(player.transform, gate.transform);

        obj.SetTransformPoint(spawnLocations[RandomizeSpawnSlot()]);

        NetworkServer.Spawn(obj);
    }

    int RandomizeSpawnSlot()
    {
        int slot = Random.Range(0, spawnLocations.Length);
        return slot;
    }
}