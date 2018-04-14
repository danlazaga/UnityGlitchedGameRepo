using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class BulletPool : Singleton<BulletPool>
{
    protected BulletPool() { }

    public bool shouldExpand = true;
    public List<GameObject> pooledObjects;
    public GameObject objectToPool;
    public int amountToPool;

    public NetworkHash128 assetId { get; set; }

    public delegate GameObject SpawnDelegate(Vector3 position, NetworkHash128 assetId);
    public delegate void UnSpawnDelegate(GameObject spawned);


    void Start()
    {
        assetId = objectToPool.GetComponent<NetworkIdentity>().assetId;

        pooledObjects = new List<GameObject>();
        for (int i = 0; i < amountToPool; i++)
        {
            GameObject obj = (GameObject)Instantiate(objectToPool, Vector3.zero, Quaternion.identity);
            obj.transform.SetParent(this.transform);
            obj.SetActive(false);
            pooledObjects.Add(obj);
        }

        ClientScene.RegisterSpawnHandler(assetId, SpawnObject, UnSpawnObject);
    }

    public GameObject GetPooledObject(Vector3 position)
    {
        for (int i = 0; i < pooledObjects.Count; i++)
        {
            if (!pooledObjects[i].activeInHierarchy)
            {
                pooledObjects[i].transform.position = position;
                pooledObjects[i].SetActive(true);
                return pooledObjects[i];
            }
        }
        if (shouldExpand)
        {
            GameObject obj = (GameObject)Instantiate(objectToPool);
            obj.SetActive(false);
            obj.transform.SetParent(this.transform);
            pooledObjects.Add(obj);
            return obj;
        }
        else
        {
            return null;
        }
    }

    public GameObject SpawnObject(Vector3 position, NetworkHash128 assetId)
    {
        return GetPooledObject(position);
    }

    public void UnSpawnObject(GameObject spawned)
    {
        spawned.SetActive(false);
    }
}

