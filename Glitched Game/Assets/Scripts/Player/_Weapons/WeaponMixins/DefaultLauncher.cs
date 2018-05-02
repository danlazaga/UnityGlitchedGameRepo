﻿using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

public class DefaultLauncher : WeaponLauncher
{
	[Header("Rail Gun Properties")]
	[SerializeField] float weaponRange;
	[SerializeField] LineRenderer laserLine;
	[SerializeField] Camera fpsCam;
	[SerializeField] WaitForSeconds shotDuration = new WaitForSeconds(0.07f);

	public override void Shoot()
	{
		CmdShoot();
		Debug.Log("Default Launcher");
	}

	[Command]
	void CmdShoot()
	{
		Vector3 rayOrigin = fpsCam.ViewportToWorldPoint(new Vector3(0.5f, 0.5f, 0.0f));

		RaycastHit hit;
		Ray ray = new Ray(rayOrigin, fpsCam.transform.forward);

		Debug.DrawRay(rayOrigin, fpsCam.transform.forward * weaponRange, Color.green, 0.07f);

		bool result = Physics.Raycast(ray, out hit, weaponRange);

		if (result)
		{
			var enemy = hit.transform.GetComponent<IHealth>();

			if (enemy != null)
				enemy.TakeDamage(1);
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
		laserLine.SetPosition(0, firePoint.position);

		if (result)
		{
			laserLine.SetPosition(1, hit);
		}
		else
		{
			laserLine.SetPosition(1, origin + (fpsCam.transform.forward * weaponRange));
		}

		StartCoroutine(StartDrawLine());
	}

	private IEnumerator StartDrawLine()
	{
		laserLine.enabled = true;
		yield return shotDuration;
		laserLine.enabled = false;
	}
}