using UnityEngine;

public class ActorParticles : MonoBehaviour
{
#region Variables
	[SerializeField] private ParticleSystem deathParticlePrefab;
#endregion

#region Unity Methods
	private void Awake()
	{
		if (GetComponent<IHealthHandler>()!= null)
		{
			GetComponent<IHealthHandler>().OnDied += HandleNPCDied;
		}
	}
#endregion

	private void HandleNPCDied()
	{
		var deathparticle = Instantiate(deathParticlePrefab, transform.position, transform.rotation);
		Destroy(deathparticle, 4f);
	}
}