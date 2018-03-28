using UnityEngine;
using UnityEngine.Audio;

[CreateAssetMenu(menuName = "ScriptableObjects/Audio SnapShot", fileName = "AudioSnapshotData")]
public class AudioSnapshotProperties : ScriptableObject
{

	[SerializeField] AudioMixerSnapshot titleScene;
	[SerializeField] AudioMixerSnapshot bgm1;
	[SerializeField] AudioMixerSnapshot bgm2;
	[SerializeField] AudioMixerSnapshot bgm3;
	[SerializeField] AudioMixerSnapshot bgm4;

	public AudioMixerSnapshot TitleScene { get { return titleScene; } }
	public AudioMixerSnapshot Bgm1 { get { return bgm1; } }
	public AudioMixerSnapshot Bgm2 { get { return bgm2; } }
	public AudioMixerSnapshot Bgm3 { get { return bgm3; } }
	public AudioMixerSnapshot Bgm4 { get { return bgm4; } }
}