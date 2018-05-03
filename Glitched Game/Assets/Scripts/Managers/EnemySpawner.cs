﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class EnemySpawner : NetworkBehaviour
{

    public Transform[] spawnLocations;

    private bool canSpawn = false;

    [Header("Spawn Properties")]
    // maximum wave amount
    [SerializeField] public int maxWaveAmount;

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

    public override void OnStartServer()
    {
        maxWaveAmount = 3;
        maxSpawnRate = 10f;

        minAddSpawn = 1;
        maxAddSpawn = 3;

        OnStartSpawn();
    }

    private void Update()
    {
        if (canSpawn)
        {
            spawnRate += Time.deltaTime;
            if (spawnRate >= maxSpawnRate)
            {
                SpawnEnemy();
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

    void OnStartSpawn()
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
        player = GameObject.FindGameObjectWithTag("Player");
        canSpawn = true;
    }

    // Spawn Enemy Randomly
    void SpawnEnemy()
    {
        GameObject obj = ObjectPool.Instance.GetPooledObject("Enemy");

        obj.GetComponent<EnemyStateController>().SetTargets(player.transform, gate.transform);
        obj.SetTransformPoint(spawnLocations[RandomizeSpawnSlot()]);

    }

    int RandomizeSpawnSlot()
    {
        int slot = Random.Range(0, spawnLocations.Length);
        return slot;
    }
}