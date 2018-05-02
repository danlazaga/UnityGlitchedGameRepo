using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySpawner : MonoBehaviour {

    public Transform[] spawnLocations;

    private bool canSpawn = false;

    [Header("Spawn Properties")]
    // maximum wave amount
    [SerializeField]public int maxWaveAmount;

    // current wave amount
    private int waveAmount = 0;

    // maximum spawn interval
    [SerializeField]private float maxSpawnRate;
    // current spawn rate
    private float spawnRate;

    // Player Wait Time before next wave
    private WaitForSeconds waitTime = new WaitForSeconds(10f);

    // Minimum and maximum Spawn addition
    private int minAddSpawn;
    private int maxAddSpawn;
    
    private GameObject gate;

    private void Start()
    {
        gate = GameObject.FindGameObjectWithTag("Gate");

        maxWaveAmount = 3;
        maxSpawnRate = 10f;

        minAddSpawn = 1;
        maxAddSpawn = 3;

        GameManager.Instance.StartGame += OnStartSpawn;
       
    }

    private void OnDestroy()
    {
        GameManager.Instance.StartGame -= OnStartSpawn;
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
    void SpawnEnemy()
    {
        GameObject obj = ObjectPool.Instance.GetPooledObject("Enemy");
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        obj.GetComponent<EnemyStateController>().SetTargets(player.transform, gate.transform);
        obj.SetTransformPoint(spawnLocations[RandomizeSpawnSlot()]);

    }

    int RandomizeSpawnSlot()
    {
        int slot = Random.Range(0, spawnLocations.Length);
        return slot;
    }
}
