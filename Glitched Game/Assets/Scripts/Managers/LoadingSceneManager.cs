using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LoadingSceneManager : Singleton<LoadingSceneManager>
{
    protected LoadingSceneManager() { }

    public CanvasGroup loadingScreenObj;
    public Image loadingSlider;

    public void LoadScene(string sceneName)
    {
        StartCoroutine(LoadingScene(sceneName));
    }

    IEnumerator LoadingScene(string sceneName)
    {

        if (loadingScreenObj == null)
            Debug.Log("Loading Screen GameObject not been set on the Inspector");

        if (loadingSlider == null)
            Debug.Log("UI Slider not been set on the Inspector ");

        loadingScreenObj.SetActive(true);

        AsyncOperation async = SceneManager.LoadSceneAsync(sceneName);
        async.allowSceneActivation = false;

        float percentage = 0;

        while (!async.isDone)
        {
            loadingSlider.fillAmount = async.progress;

            if (async.progress < 0.9f)
            {
                loadingSlider.fillAmount = async.progress / 0.9f;
                percentage = async.progress * 100;
            }
            else
            {
                loadingSlider.fillAmount = async.progress / 0.9f;
                percentage = (async.progress / 0.9f)* 100;
                async.allowSceneActivation = true;
            }

            yield return null;
        }

        loadingScreenObj.SetActive(false);
    }

}