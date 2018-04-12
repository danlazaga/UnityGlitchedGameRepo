using UnityEngine;
using UnityEngine.UI;

public class HPBar : MonoBehaviour
{
#region Variables
	[SerializeField] private Slider slider;
#endregion

#region Unity Methods
	private void Awake()
	{
		if (GetComponentInParent<IHealthHandler>()!= null)
		{
			GetComponentInParent<IHealthHandler>().OnHPPctChanged += HandleHPPctChanged;
		}
	}
#endregion

	private void HandleHPPctChanged(float value)
	{
		slider.value = value;
	}
}