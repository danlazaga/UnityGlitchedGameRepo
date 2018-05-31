using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class EnemyPool : Singleton<EnemyPool>
{
	protected EnemyPool() { }
	public const string DefaultRootObjectPoolName = "Pooled Objects";
	public string rootPoolName = DefaultRootObjectPoolName;

	[SerializeField] bool shouldExpand;
	[SerializeField] int poolSize = 5;
	[SerializeField] GameObject enemyPrefab;
	[SerializeField] List<GameObject> pooledObjects = new List<GameObject>();

	public NetworkHash128 assetId { get; set; }

	public delegate GameObject SpawnDelegate(Vector3 position, NetworkHash128 assetId);
	public delegate void UnSpawnDelegate(GameObject spawned);

	void Start()
	{
		if (string.IsNullOrEmpty(rootPoolName))
			rootPoolName = DefaultRootObjectPoolName;

		GetParentPoolObject(rootPoolName);

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
		if (shouldExpand)
		{
			GameObject obj = (GameObject)Instantiate(enemyPrefab, Vector3.zero, Quaternion.identity);
			
			var parentPoolObject = GetParentPoolObject(rootPoolName);
			obj.transform.SetParent(parentPoolObject.transform);

			obj.transform.position = position;
			obj.SetActive(true);
			pooledObjects.Add(obj);
			return obj;
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

		var parentPoolObject = GetParentPoolObject(rootPoolName);
		obj.transform.SetParent(parentPoolObject.transform);

		obj.SetActive(false);
		pooledObjects.Add(obj);
		return obj;
	}

	GameObject GetParentPoolObject(string objectPoolName)
	{
		// Use the root object pool name if no name was specified
		if (string.IsNullOrEmpty(objectPoolName))
			objectPoolName = rootPoolName;

		GameObject parentObject = GameObject.Find(objectPoolName);

		// Create the parent object if necessary
		if (parentObject == null)
		{
			parentObject = new GameObject();
			parentObject.name = objectPoolName;

			// Add sub pools to the root object pool if necessary
			if (objectPoolName != rootPoolName)
				parentObject.transform.SetParent(GameObject.Find(rootPoolName).transform);
		}

		return parentObject;
	}

}