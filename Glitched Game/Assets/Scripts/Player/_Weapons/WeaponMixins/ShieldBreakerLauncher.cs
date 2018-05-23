using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class ShieldBreakerLauncher : WeaponLauncher
{
	[Header("ShieldBreaker Gun Properties")]
	[SerializeField] float weaponRange;
	[SerializeField] float weaponDamage;
	[SerializeField] GameObject beam;
	[SerializeField] Camera fpsCam;
	WaitForSeconds shotDuration = new WaitForSeconds(0.07f);

	public override void Shoot()
	{
		CmdShoot();
		Debug.Log("ShieldBreaker Launcher");
	}

	[Command]
	void CmdShoot()
	{
		Vector3 rayOrigin = fpsCam.ViewportToWorldPoint(new Vector3(0.5f, 0.5f, 0.0f));

		RaycastHit hit;
		Ray ray = new Ray(rayOrigin, fpsCam.transform.forward);

		Debug.DrawRay(rayOrigin, fpsCam.transform.forward * weaponRange, Color.green, 0.07f);

		bool result = Physics.Raycast(ray, out hit, weaponRange, layer);

		if (result)
		{
			var enemy = hit.transform.GetComponent<IHealthHandler>();

			if (enemy != null)
				enemy.TakeDamage(weaponDamage);
		}

		RpcDrawLine(result, rayOrigin, hit.point);
		RpcProcessShotEffects(result, hit.point);
	}

	[ClientRpc]
	void RpcProcessShotEffects(bool playImpact, Vector3 point)
	{
		weaponEffects.PlayShotEffects();

		if (playImpact)
			weaponEffects.PlayImpactEffect(point);
	}

	[ClientRpc]
	void RpcDrawLine(bool result, Vector3 origin, Vector3 hit)
	{
		StartCoroutine(StartDrawLine());
	}

	private IEnumerator StartDrawLine()
	{
		beam.SetActive(true);
		yield return shotDuration;
		beam.SetActive(false);
	}
}