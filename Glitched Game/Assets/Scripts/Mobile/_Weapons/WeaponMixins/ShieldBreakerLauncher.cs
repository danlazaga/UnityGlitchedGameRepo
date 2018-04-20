using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class ShieldBreakerLauncher : WeaponLauncher, IWeapon
{
	public void Shoot()
	{
		CmdShoot();
		Debug.Log("ShieldBreaker Launcher");
	}

	[Command]
	void CmdShoot()
	{
		RpcProcessShotEffects();
	}

	[ClientRpc]
	void RpcProcessShotEffects()
	{
		turretEffects.PlayShotEffects();
	}
}