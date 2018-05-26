using UnityEngine;
using UnityEngine.Audio;

[CreateAssetMenu(menuName = "ScriptableObjects/Audio SnapShot", fileName = "AudioSnapshotData")]
public class AudioSnapshotProperties : ScriptableObject
{

	[SerializeField] AudioMixerSnapshot titleScene;
	[SerializeField] AudioMixerSnapshot bgm1;

	public AudioMixerSnapshot TitleScene { get { return titleScene; } }
	public AudioMixerSnapshot Bgm1 { get { return bgm1; } }

}