using UnityEngine;
using UnityEngine.Networking;

public class Spawner : NetworkBehaviour
{
#region Variables
	[SerializeField] GameObject prefab;
	[SerializeField] Transform spawnPos;
#endregion

#region Unity Methods
	public override void OnStartServer()
	{
		Spawn();
	}
#endregion

	void Spawn()
	{
		GameObject obj = Instantiate(prefab, spawnPos.position, spawnPos.rotation);
		NetworkServer.Spawn(obj);
	}
}