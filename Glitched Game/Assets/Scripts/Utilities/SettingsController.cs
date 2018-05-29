using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class SettingsController : MonoBehaviour
{
#region Variables
	[SerializeField] AudioMixer audioMixer;
	[SerializeField] Slider musicSlider, soundFXSlider;
	float musicVol, sfxVol;
#endregion

	private void Start()
	{
		var bgm = PlayerPrefs.GetFloat("bgmVolume", 72.5f);
		var sfx = PlayerPrefs.GetFloat("sfxVolume", 100);

		audioMixer.SetFloat("bgmVol", ConvertToDecibel(bgm));
		audioMixer.SetFloat("sfxVol", ConvertToDecibel(sfx));

		musicSlider.value = bgm;
		soundFXSlider.value = sfx;
	}

	public void SetMusicVolume(float value)
	{
		musicVol = value;
		audioMixer.SetFloat("bgmVol", ConvertToDecibel(value));
	}

	public void SetSoundEffectsVolume(float value)
	{
		sfxVol = value;
		audioMixer.SetFloat("sfxVol", ConvertToDecibel(value));
	}

	public void SaveValue()
	{
		PlayerPrefs.SetFloat("bgmVolume", musicVol);
		PlayerPrefs.SetFloat("sfxVolume", sfxVol);
	}

	/**
	 * Convert the value coming from our sliders to a decibel value we can
	 * feed into the audio mixer.
	 */
	float ConvertToDecibel(float value)
	{
		float decibel = -80f;

		if (value > 0)
		{
			decibel = Mathf.Log(value / 100f)* 17f;
		}

		return decibel;
	}
}