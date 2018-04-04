using UnityEngine;

public class WeaponBehavior { }

public abstract class Ballistics : MonoBehaviour
{
	protected Transform firePoint;

	protected Vector3 BallisticVelocity(Vector3 origin, Vector3 destination, float angle)
	{
		Vector3 dir = destination - origin; // get Target Direction
		float height = dir.y; // get height difference
		dir.y = 0; // retain only the horizontal difference
		float dist = dir.magnitude; // get horizontal direction
		float a = angle * Mathf.Deg2Rad; // Convert angle to radians
		dir.y = dist * Mathf.Tan(a); // set dir to the elevation angle.
		dist += height / Mathf.Tan(a); // Correction for small height differences

		// Calculate the velocity magnitude
		float velocity = Mathf.Sqrt(dist * Physics.gravity.magnitude / Mathf.Sin(2 * a));
		return velocity * dir.normalized; // Return a normalized vector.
	}
}

public class DefaultSpearLauncher : Ballistics, IWeapon
{
	float angle;

	public void Initialize(Transform firePoint, float angle)
	{
		this.angle = angle;
		this.firePoint = firePoint;
	}

	public void Shoot(Vector3 destination)
	{
		GameObject cannonBall = Instantiate(Resources.Load("Prefabs/CannonBall", typeof(GameObject)),
			firePoint.position, Quaternion.identity)as GameObject;
		cannonBall.GetComponent<Rigidbody>().velocity = BallisticVelocity(firePoint.position, destination, angle);
	}
}

public class FireSpearLauncher : Ballistics, IWeapon
{
	float fireForce = 600;

	public void Initialize(Transform firePoint, float Angle)
	{
		this.firePoint = firePoint;

	}

	public void Shoot(Vector3 destination)
	{
		GameObject bullet = Instantiate(Resources.Load("Prefabs/Bullets", typeof(GameObject)))as GameObject;
		bullet.transform.position = firePoint.position;
		bullet.transform.rotation = firePoint.rotation;
		bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward * fireForce);
	}
}