using System;
using UnityEngine;
using UnityEngine.Networking;

public class PlayerHealth : NetworkBehaviour, IHealth
{

#region Variables
	public event Action<float> OnHPPctChanged = delegate(float f) { };
	public event Action OnDied = delegate { };

	[SerializeField] int maxHealth = 3;
	[SyncVar(hook = "OnHealthChanged")] int health;
#endregion

#region Unity Methods

	[ServerCallback]
	void OnEnable()
	{
		health = maxHealth;
	}
#endregion

	public void TakeDamage(int amount)
	{
		if (amount <= 0)
			throw new ArgumentOutOfRangeException("Invalid Damage amount specified: " + amount);

		if (health <= 0)return;

		health -= amount;

		OnHPPctChanged(health);

		if (health <= 0)
			OnDied();
	}

	[ClientRpc]
	void RpcTakeDamage()
	{

	}

	void OnHealthChanged(int value)
	{
		health = value;
		if (isLocalPlayer)
			PlayerHUD.Instance.SetHealth(value);
	}
}