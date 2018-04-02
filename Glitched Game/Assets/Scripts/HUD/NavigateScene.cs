using UnityEngine;
using UnityEngine.SceneManagement;

public class NavigateScene : MonoBehaviour
{
#region Variables
	[Tooltip("Scene name to transition")]
	public string sceneName;
	IButtonInteract ibuttonInteract;
#endregion

#region Unity Methods
	private void Awake()
	{
		ibuttonInteract = GetComponent<IButtonInteract>();

		if (ibuttonInteract != null)
		{
			ibuttonInteract.OnInteract += HUDInteractHandler;
		}
	}

	private void OnDestroy()
	{
		ibuttonInteract.OnInteract -= HUDInteractHandler;
	}
#endregion

	private void HUDInteractHandler()
	{
		LoadingSceneManager.Instance.LoadScene(sceneName);
	}
}