using System;
using UnityEngine;
using UnityEngine.UI;

public class ButtonClicker : MonoBehaviour, IButtonInteract
{
#region Variables
	private Button interactableButton;
	public event Action OnInteract = delegate { };
#endregion

#region Unity Methods
	private void Awake()
	{
		interactableButton = GetComponent<Button>();

		if (interactableButton != null)
		{
			interactableButton.onClick.AddListener(()=> OnClick());
		}
	}
#endregion

	public void OnClick()
	{
		if(OnInteract != null) { OnInteract(); }
	}
}