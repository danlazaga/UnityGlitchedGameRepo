using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class EnemyPool : Singleton<EnemyPool>
{
	protected EnemyPool() { }

	[SerializeField] bool shouledExpand;
	[SerializeField] int poolSize = 5;
	[SerializeField] GameObject enemyPrefab;
	[SerializeField] List<GameObject> pooledObjects = new List<GameObject>();

	public NetworkHash128 assetId { get; set; }

	public delegate GameObject SpawnDelegate(Vector3 position, NetworkHash128 assetId);
	public delegate void UnSpawnDelegate(GameObject spawned);

	void Start()
	{
		assetId = enemyPrefab.GetComponent<NetworkIdentity>().assetId;

		pooledObjects = new List<GameObject>();

		for (int i = 0; i < poolSize; ++i)
		{
			CreateObject();
		}

		ClientScene.RegisterSpawnHandler(assetId, SpawnObject, UnSpawnObject);
	}

	public GameObject GetFromPool(Vector3 position)
	{
		foreach (var obj in pooledObjects)
		{
			if (!obj.activeInHierarchy)
			{
				obj.transform.position = position;
				obj.SetActive(true);
				return obj;
			}
		}
		if (shouledExpand)
		{
			return CreateObject();
		}
		
		Debug.LogError("Could not grab GameObject from pool, nothing available");
		return null;
	}

	public GameObject SpawnObject(Vector3 position, NetworkHash128 assetId)
	{
		return GetFromPool(position);
	}

	public void UnSpawnObject(GameObject spawned)
	{
		Debug.Log("Re-pooling GameObject " + spawned.name);
		spawned.SetActive(false);
	}

	GameObject CreateObject()
	{
		GameObject obj = (GameObject)Instantiate(enemyPrefab, Vector3.zero, Quaternion.identity);
		obj.SetActive(false);
		pooledObjects.Add(obj);
		return obj;
	}

}