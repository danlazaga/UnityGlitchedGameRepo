using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
#if UNITY_ANDROID || UNITY_IOS || UNITY_EDITOR
public class ActorMeshRendererMobileMaterialLoader : MonoBehaviour
{
	MeshRenderer meshRenderer;
	public string assetBundleName;
	//public string  mobileAssetName;
	public List<Material> meshMaterials = new List<Material>();
	public List<string> meshMaterialsName = new List<string>();

	private void Start()
	{
		meshRenderer = GetComponent<MeshRenderer>();

		StartCoroutine(LoadAsset());

	}
	IEnumerator LoadAsset()
	{
		//var myLoadedAssetBundle = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, assetBundleName));
		// This is simply to get the elapsed time for this phase of AssetLoading.
		float startTime = Time.realtimeSinceStartup;
		char[] instanceString = { '(', 'I', 'n', 's', 't', 'a', 'n', 'c', 'e', ')' };
		char space = ' ';
		List<string> convertedMaterialName = new List<string>();
		for (int i = 0; i < meshRenderer.materials.Length; i++)
		{
			meshMaterialsName.Add(meshRenderer.materials[i].name.TrimEnd(instanceString));

		}
		for (int i = 0; i < meshRenderer.materials.Length; i++)
		{
			convertedMaterialName.Add(meshMaterialsName[i].TrimEnd(space)+ "-mobile");

		}

		// Load asset from assetBundle.
		for (int j = 0; j < meshMaterialsName.Count; j++)
		{
			//AssetBundleLoadAssetOperation request = AssetBundleManager.LoadAssetAsync(bundle, convertedMaterialName[j], typeof(Material));
			var request = AssetBundleLoadManager.Instance.assetBundle.LoadAsset<Material>(convertedMaterialName[j]);
			if (request == null)
				yield break;
			//yield return StartCoroutine(request);

			//	Material meshMaterial = request.GetAsset<Material>();
			meshMaterials.Add(request /*.GetAsset<Material>()*/ );

		}
		AddInArray();

		float elapsedTime = Time.realtimeSinceStartup - startTime;
	}
	void AddInArray()
	{
		var initMaterials = new Material[meshMaterials.Count];
		for (int i = 0; i < meshMaterials.Count; i++)
		{
			initMaterials[i] = meshMaterials[i];
		}
		meshRenderer.materials = initMaterials;
	}

}
#endif