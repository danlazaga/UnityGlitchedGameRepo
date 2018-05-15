using System;
using UnityEngine;


public class TutorialPlayerHealth : MonoBehaviour, IHealthHandler
{

#region Variables
	[SerializeField] float maxHealth = 100;
	[SerializeField] float health;
	public event Action<float> OnHPPctChanged = delegate(float f) { };
	public event Action OnDied = delegate { };

#endregion

#region Unity Methods
	void OnEnable()
	{
		health = maxHealth;
	}
#endregion
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
	void RpcTakeDamage(bool died)
	{
		OnHPPctChanged(health);

		PlayerHUD.Instance.FlashDamageEffect();

		if (died)
			OnDied();
	}

	void OnHealthChanged(float value)
	{
		health = value;

		PlayerHUD.Instance.SetHealth(value);
	}
}