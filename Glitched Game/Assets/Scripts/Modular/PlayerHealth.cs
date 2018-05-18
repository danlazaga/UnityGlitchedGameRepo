using System;
using UnityEngine;
using UnityEngine.Networking;

public class PlayerHealth : NetworkBehaviour, IHealthHandler
{

#region Variables
	//[SerializeField] bool isHTCPlayer;
	[SerializeField] float maxHealth = 100;
	[SyncVar(hook = "OnHealthChanged")] float health;
	public event Action<float> OnHPPctChanged = delegate(float f) { };
	public event Action OnDied = delegate { };

#endregion

#region Unity Methods

	[ServerCallback]
	void OnEnable()
	{
		health = maxHealth;
		OnDied += OnDeath;
	}

	public override void OnStartClient()
	{
		OnHealthChanged(health);
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

		died = health <= 0;

		RpcTakeDamage(died);
	}

	[ClientRpc]
	void RpcTakeDamage(bool died)
	{
		OnHPPctChanged(health);

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
		PlayerHUD.Instance.SetHTCHealth(value);
		

	}

	void OnDeath()
	{
		Debug.Log ("Player Death");
		GameManager.Instance.GameOverScreen();
	}
}