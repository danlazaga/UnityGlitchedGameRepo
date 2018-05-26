using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

[System.Serializable]
public class AudioSourceProperties
{
    public AudioSource menuSource;
    public AudioSource gameSceneOneSource;
    public AudioSource uiAudioSource;
}

public class SoundManager : Singleton<SoundManager>
{
    protected SoundManager() { }

#region Variables
    [SerializeField] AudioSourceProperties audioSourceProperties;
    [Space(10)]
    [SerializeField] AudioSnapshotProperties audioSnapshotProperties;

    [Header("Cross Fade Properties")]
    [SerializeField] float bpmFadeInSpeed = 128;

    [Header("Randomizer Properties")]
    [SerializeField] RangedFloat volume;
    [SerializeField] RangedFloat pitchRange;
    float transitionIn;
    float quarterNote;
#endregion

#region  Unity Methods
    void Awake()
    {
        quarterNote = 60 / bpmFadeInSpeed;
        transitionIn = quarterNote;
    }
#endregion

#region Functions
    public void PlayBGM(int scene)
    {
        switch (scene)
        {
            case 0:
                audioSnapshotProperties.TitleScene.TransitionTo(transitionIn);
                break;

            case 1:
                audioSnapshotProperties.Bgm1.TransitionTo(transitionIn);
                break;
        }

        StartCoroutine(ControlAudioSource(scene));
    }

    IEnumerator ControlAudioSource(int index)
    {
        yield return new WaitForSeconds(0.3f);

        switch (index)
        {
            case 0:
                if (!audioSourceProperties.menuSource.isPlaying)
                {
                    audioSourceProperties.gameSceneOneSource.Stop();
                    audioSourceProperties.menuSource.Play();
                }
                break;

            case 1:
                if (!audioSourceProperties.gameSceneOneSource.isPlaying)
                {
                    audioSourceProperties.menuSource.Stop();
                    audioSourceProperties.gameSceneOneSource.Play();
                }
                break;
        }
    }

    public void PlayShot(AudioSource source)
    {
        RandomizeSfx(source, source.clip);
    }

    public void PlayButtonClick()
    {
        RandomizeSfx(audioSourceProperties.uiAudioSource, audioSourceProperties.uiAudioSource.clip);
    }

    public void PlayClickButtonSFX(AudioSource source)
    {
        RandomizeSfx(source, source.clip);
    }

    //RandomizeSfx chooses randomly between various audio clips and slightly changes their pitch.
    void RandomizeSfx(AudioSource source, params AudioClip[] clips)
    {
        //Generate a random number between 0 and the length of our array of clips passed in.
        int randomIndex = Random.Range(0, clips.Length);

        //Choose a random pitch to play back our clip at between our high and low pitch ranges.
        float randomPitch = Random.Range(pitchRange.minValue, pitchRange.maxValue);
        float randomVolume = Random.Range(volume.minValue, volume.maxValue);

        //Set the pitch of the audio source to the randomly chosen pitch.
        source.pitch = randomPitch;

        //Set the volume of the audio source to the randomly chosen volume.
        source.volume = randomVolume;

        //Set the clip to the clip at our randomly chosen index.
        source.clip = clips[randomIndex];

        //Play the clip.
        source.PlayOneShot(clips[randomIndex], 1);
    }
#endregion
}