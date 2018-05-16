using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;



#if UNITY_ANDROID
public class ActorSkinnedMeshMobileMaterialLoader : MonoBehaviour {
	[SerializeField]SkinnedMeshRenderer skinnedMeshRenderer;
	public string assetBundleName;
	[SerializeField] List<Material> skinnedMeshMaterials = new List<Material>();
	[SerializeField] List<string> skinnedMeshMaterialsName = new List<string>();
	
	// Use this for initialization
	void Start () {
		skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer>();
		if(skinnedMeshRenderer == null)
		{
			skinnedMeshRenderer = GetComponentInChildren<SkinnedMeshRenderer>();
			if(skinnedMeshRenderer!= null)
			{
				Debug.Log("success");
			}
		}
		StartCoroutine(LoadMaterialsFromBundle());
		//LoadMaterialsFromBundle();
	}
	IEnumerator LoadMaterialsFromBundle()
	{
		var myLoadedAssetBundle = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, assetBundleName));

		float startTime = Time.realtimeSinceStartup;
		//char[] instanceString= {'(','M','a','t','e','r','i','a','l',')'};
		char[] instanceString= {'(','I','n','s','t','a','n','c','e',')'};
		char space =' ';
		List<string> convertedMaterialName = new List<string>();

		for(int i = 0; i < skinnedMeshRenderer.materials.Length; i++)
		{
			skinnedMeshMaterialsName.Add( skinnedMeshRenderer.materials[i].name.TrimEnd(instanceString));
			
		}
		for(int i = 0; i <  skinnedMeshRenderer.materials.Length; i++)
		{
			convertedMaterialName.Add(skinnedMeshMaterialsName[i].TrimEnd(space)+"-mobile");
			
		}
		for(int j = 0; j < skinnedMeshMaterialsName.Count; j++)
		{
			//AssetBundleLoadAssetOperation request = AssetBundleManager.LoadAssetAsync(bundle, convertedMaterialName[j], typeof(Material));
			var request= myLoadedAssetBundle.LoadAsset<Material>( convertedMaterialName[j]);
			if (request == null)
				yield break;
			
			skinnedMeshMaterials.Add(request);
		}
		 AddInArray();

        float elapsedTime = Time.realtimeSinceStartup - startTime;

	}
	void AddInArray()
	{
		var initMaterials = new Material[skinnedMeshMaterials.Count];
		for(int i = 0; i<skinnedMeshMaterials.Count;i++)
		{
			initMaterials[i] = skinnedMeshMaterials[i];
		}
		skinnedMeshRenderer.materials = initMaterials;
	}

}
#endif