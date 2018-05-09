using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class ShieldBreakerLauncher : WeaponLauncher
{
	public override void Shoot()
	{
		CmdShoot();
		Debug.Log("ShieldBreaker Launcher");
	}

	[Command]
	void CmdShoot()
	{
		var obj = ObjectPool.Instance.GetPooledObject("DefaultBullet");
		obj.SetActive(true);
		obj.transform.position = firePoint.position;
		NetworkServer.Spawn(obj);
		RpcProcessShotEffects();
	}

	[ClientRpc]
	void RpcProcessShotEffects()
	{
		weaponEffects.PlayShotEffects();
	}
}