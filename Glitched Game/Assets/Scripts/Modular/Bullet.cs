using UnityEngine;

public class Bullet : MonoBehaviour
{
#region Variables
	[SerializeField] float damage = 1f;
#endregion

#region Unity Methods
	private void OnCollisionEnter(Collision other)
	{
		var hit = other.gameObject;
		var health = hit.GetComponent<IHealthHandler>();

		if (health != null)
		{
			health.TakeDamage(damage);
		}

		ObjectPool.Instance.ReturnToPool(this.gameObject);
	}
#endregion
}