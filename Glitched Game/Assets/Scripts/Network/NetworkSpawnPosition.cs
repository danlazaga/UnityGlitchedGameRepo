using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class NetworkSpawnPosition : MonoBehaviour
{
	[SerializeField] List<Transform> spawnPositions = new List<Transform>();
	[Space(10)]
	[SerializeField] Transform spawnHTCPos;
	[SerializeField] Transform spawnGatePos;
	[SerializeField] Transform spawnBoss;
	int playerSpawnIndex = 0;

	public Transform GetHTCSpawnPositions()
	{
		return spawnHTCPos;
	}

	public Transform GetGateSpawnPosition()
	{
		return spawnGatePos;
	}

	public Transform GetBossSpawnPosition()
	{
		return spawnBoss;
	}

	public Transform GetSpawnPositions()
	{
		// first remove any dead transforms
		if (spawnPositions.Count > 0)
		{
			for (int i = spawnPositions.Count - 1; i >= 0; i--)
			{
				if (spawnPositions[i] == null)
					spawnPositions.RemoveAt(i);
			}
		}

		// if (ModifiedNetworkManager.Instance.playerSpawnMethod == PlayerSpawnMethod.Random && spawnPositions.Count > 0)
		// {
		// 	// try to spawn at a random start location
		// 	int index = Random.Range(0, spawnPositions.Count);
		// 	return spawnPositions[index];
		// }
		if (ModifiedNetworkManager.Instance.playerSpawnMethod == PlayerSpawnMethod.RoundRobin && spawnPositions.Count > 0)
		{
			if (playerSpawnIndex >= spawnPositions.Count)
			{
				playerSpawnIndex = 0;
			}

			Transform startPos = spawnPositions[playerSpawnIndex];
			playerSpawnIndex += 1;
			return startPos;
		}
		
		return null;
	}
}