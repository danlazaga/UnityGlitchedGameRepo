﻿using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
public class AssetBundleLoadManager : Singleton<AssetBundleLoadManager>
{

	public string assetBundleName;
	public AssetBundle assetBundle;

	// Use this for initialization

	private void Awake()
	{
		assetBundle = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, assetBundleName));
	}
}