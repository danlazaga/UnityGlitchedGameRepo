using System;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class LongButtonClicker : MonoBehaviour, IButtonInteract, IPointerDownHandler, IPointerUpHandler
{

#region Variables
	public event Action OnInteract = delegate { };
	private bool pointerDown;
	private float pointerDownTimer;
	private Image baseImage;
	[SerializeField] private float requiredHoldTime;
	[SerializeField] private Image fillImage;
#endregion

#region Unity Methods

	void Start()
	{
		baseImage = GetComponent<Image>();
		fillImage.sprite = baseImage.sprite;
	}

	void Update()
	{
		if (pointerDown)
		{
			pointerDownTimer += Time.deltaTime;

			if (pointerDownTimer >= requiredHoldTime)
			{
				OnClick();
				Reset();
			}

			fillImage.fillAmount = pointerDownTimer / requiredHoldTime;
		}
	}

	public void OnPointerDown(PointerEventData eventData)
	{
		pointerDown = true;
	}

	public void OnPointerUp(PointerEventData eventData)
	{
		pointerDown = false;
		Reset();
	}
#endregion

	public void OnClick()
	{
		if (OnInteract != null)OnInteract();
	}

	void Reset()
	{
		pointerDownTimer = 0;
		fillImage.fillAmount = pointerDownTimer / requiredHoldTime;
	}
}