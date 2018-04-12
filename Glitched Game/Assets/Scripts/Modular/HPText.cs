using System;
using UnityEngine;
using UnityEngine.UI;
public class HPText : MonoBehaviour
{
#region Variables
	[SerializeField] private Text textIndicator;
	string stringFormat = "{0:#,###0}";
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
		textIndicator.text = string.Format(stringFormat, value);
	}
}