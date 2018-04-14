using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

[System.Serializable]
public class ObjectPoolItem
{
    public GameObject objectToPool;
    public string poolName;
    public int amountToPool;
    public bool shouldExpand;
}

public class ObjectPool : Singleton<ObjectPool>
{
    protected ObjectPool() { }

    public const string DefaultRootObjectPoolName = "Pooled Objects";
    public string rootPoolName = DefaultRootObjectPoolName;
    [SerializeField] List<ObjectPoolItem> itemsToPool = new List<ObjectPoolItem>();
    [SerializeField] List<GameObject> pooledObjects = new List<GameObject>();

    void Awake()
    {
        if (string.IsNullOrEmpty(rootPoolName))
            rootPoolName = DefaultRootObjectPoolName;

        GetParentPoolObject(rootPoolName);

        pooledObjects = new List<GameObject>();
        foreach (var item in itemsToPool)
        {
            for (int i = 0; i < item.amountToPool; i++)
            {
                CreatePooledObject(item);
            }
        }
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

    public GameObject GetPooledObject(string tag)
    {
        for (int i = 0; i < pooledObjects.Count; i++)
        {
            if (!pooledObjects[i].activeInHierarchy && pooledObjects[i].CompareTag(tag))
                return pooledObjects[i];
        }

        foreach (var item in itemsToPool)
        {
            if (item.objectToPool.CompareTag(tag))
            {
                if (item.shouldExpand)
                {
                    return CreatePooledObject(item);
                }
            }
        }

        return null;
    }

    GameObject CreatePooledObject(ObjectPoolItem item)
    {
        GameObject obj = Instantiate<GameObject>(item.objectToPool);

        // Get the parent for this pooled object and assign the new object to it
        var parentPoolObject = GetParentPoolObject(item.poolName);
        obj.transform.SetParent(parentPoolObject.transform);

        obj.SetActive(false);
        pooledObjects.Add(obj);
        return obj;
    }

    public void ReturnToPool(GameObject obj)
    {
        obj.SetActive(false);
        NetworkServer.UnSpawn(obj);
    }

}