using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

#if UNITY_ANDROID
public class ActorMeshFilterMobileLoader : MonoBehaviour {

    public string assetBundleName;
	public Mesh sample;
    //public string  mobileAssetName;
	//public List<MeshFilter> meshFilters = new List<MeshFilter>();
	public MeshFilter[] meshFilters;
	public List<string> meshFilterNames;
	[SerializeField] List<GameObject> mobileMeshes = new List<GameObject>();
	[SerializeField] List<string> convertedMeshName = new List<string>();

	void Start()
	{
		meshFilters = GetComponentsInChildren<MeshFilter>();
		//meshFilters[0].sharedMesh = sample;
		StartCoroutine(LoadAsset());
	}
	IEnumerator LoadAsset()
	{
		var myLoadedAssetBundle = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, assetBundleName));
	 	// float startTime = Time.realtimeSinceStartup;
	 	// char[] instanceString= {'(','M','e','s','h',' ','F','i','l','t','e','r',')'};
	 	// char space =' ';
		 Debug.Log("progressing");
		
		for(int i = 0; i < meshFilters.Length; i++)
		{
			meshFilterNames.Add(meshFilters[i].name);
		}
			
		for(int i = 0; i < meshFilterNames.Count; i++)
		{
			convertedMeshName.Add(meshFilterNames[i]+"-mobile");
			
		}
		
        // Load asset from assetBundle.
		for(int j = 0; j <meshFilterNames.Count; j++)
		{
			//AssetBundleLoadAssetOperation request = AssetBundleManager.LoadAssetAsync(bundle, convertedMaterialName[j], typeof(Material));
			//var request= myLoadedAssetBundle.LoadAsset<Mesh>( convertedMeshName[j]);
			var request= myLoadedAssetBundle.LoadAsset<GameObject>(convertedMeshName[j]);
			if (request == null)
			{
				Debug.Log("Not Found");
				yield break;
			}
			
		
			mobileMeshes.Add(request);

		}
		 AddInArray();

       // float elapsedTime = Time.realtimeSinceStartup - startTime;
	}
	void AddInArray()
	{
		Debug.Log("Adding");
		//var initMesh = new Material[meshMaterials.Count];
		for(int i = 0; i<mobileMeshes.Count;i++)
		{
			meshFilters[i].sharedMesh = mobileMeshes[i].GetComponent<Mesh>();
		}
		//meshRenderer.materials = initMaterials;
	
	}

}
#endif