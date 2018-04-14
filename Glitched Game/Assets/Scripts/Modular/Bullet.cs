using UnityEngine;

public class Bullet : MonoBehaviour
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

		ObjectPool.Instance.ReturnToPool(this.gameObject);
	}
#endregion
}