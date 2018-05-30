using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : Singleton<GameManager>
{
    public delegate void OnForceSpawn();
    public event OnForceSpawn onForceSpawn;

    public delegate void OnGameStart();
    public event OnGameStart onStartGame;

    public void GameOverScreen()
    {
        StartCoroutine(InvokeGameOverScreen());
    }

    IEnumerator InvokeGameOverScreen()
    {
        yield return new WaitForSeconds(3f);
        PlayerHUD.instance.ShowGameOverScreen();
    }

    public void ForceSpawn()
    {
        if (onForceSpawn != null)
        {
            onForceSpawn();
        }
    }

    public void StartGame()
    {
        if (onStartGame != null)
        {
            onStartGame();
        }
    }

}