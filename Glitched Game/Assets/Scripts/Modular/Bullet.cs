using UnityEngine;
using UnityEngine.Networking;

public class Bullet : NetworkBehaviour
{
#region Variables
	[SerializeField] float damage = 25f;
#endregion

#region Unity Methods
	private void OnCollisionEnter(Collision other)
	{
		var hit = other.gameObject;
		var health = hit.GetComponent<IHealth>();

		if (health != null)
		{
			health.TakeDamage(damage);
		}

		ReturnToPool();
	}

	void ReturnToPool()
	{
		BulletPool.Instance.UnSpawnObject(this.gameObject);
		NetworkServer.UnSpawn(this.gameObject);
	}
#endregion
}