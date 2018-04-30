using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CanvasGroup))]
public class UIFader : MonoBehaviour
{
#region Variables
	[SerializeField] float fadeSpeed = 1f;
	[SerializeField] CanvasGroup groupToFade;
	[SerializeField] bool startVisible;
	[SerializeField] bool startWithFade;
	bool visible;
#endregion

#region Unity Methods
	private void Reset()
	{
		groupToFade = GetComponent<CanvasGroup>();
	}

	void Start()
	{
		if (startVisible)
			SetVisible();
		else
			SetInvisible();

		if (!startWithFade)
			return;

		if (visible)
			StartFadeOut();
		else
			StartFadeIn();
	}
#endregion

	void StartFadeIn()
	{
		StartCoroutine(FadeIn());
	}

	void StartFadeOut()
	{
		StartCoroutine(FadeOut());
	}

	void SetVisible()
	{
		groupToFade.alpha = 1f;
		visible = true;
	}

	void SetInvisible()
	{
		groupToFade.alpha = 0f;
		visible = false;
	}

	IEnumerator FadeIn()
	{
		while (groupToFade.alpha < 1f)
		{
			groupToFade.alpha += fadeSpeed * Time.deltaTime;

			yield return null;
		}

		visible = true;
	}

	IEnumerator FadeOut()
	{
		while (groupToFade.alpha > 0f)
		{
			groupToFade.alpha -= fadeSpeed * Time.deltaTime;

			yield return null;
		}

		visible = false;
	}

	public void Flash()
	{
		StartCoroutine(ProcessFlash());
	}

	IEnumerator ProcessFlash()
	{
		yield return StartCoroutine(FadeIn());
		yield return StartCoroutine(FadeOut());
	}
}