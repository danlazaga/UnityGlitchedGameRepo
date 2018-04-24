using System;
using UnityEngine;
using UnityEngine.Networking;

public class PlayerHealth : NetworkBehaviour, IHealth
{

#region Variables
	public event Action<float> OnHPPctChanged = delegate(float f) { };
	public event Action OnDied = delegate { };

	[SerializeField] float maxHealth = 100;
	[SyncVar(hook = "OnHealthChanged")] float health;
#endregion

#region Unity Methods

	[ServerCallback]
	void OnEnable()
	{
		health = maxHealth;
	}
#endregion

	[Server]
	public void TakeDamage(float amount)
	{
		bool died = false;

		if (amount <= 0)
			throw new ArgumentOutOfRangeException("Invalid Damage amount specified: " + amount);

		if (health <= 0)
			return;

		health -= amount;

		OnHPPctChanged(health);

		died = health <= 0;

		RpcTakeDamage(died);
	}

	[ClientRpc]
	void RpcTakeDamage(bool died)
	{
		// Insert hit display effect
		if (isLocalPlayer)
		{
			PlayerHUD.Instance.FlashDamageEffect();
		}

		if (died)
			OnDied();
	}

	void OnHealthChanged(float value)
	{
		health = value;
		if (isLocalPlayer)
			PlayerHUD.Instance.SetHealth(value);
	}
}