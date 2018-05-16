using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialEnemySpawner : MonoBehaviour
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

    [SerializeField] GameObject player;
    [SerializeField] GameObject gate;

#region Unity Methods
    void Start()
    {
        maxWaveAmount = 2;
        maxSpawnRate = 3f;

        HandleStartSpawn();
    }

    private void Update()
    {
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
            }

        }
    }
#endregion

    void HandleStartSpawn()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        canSpawn = true;
    }
  
    void CmdSpawnEnemy()
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