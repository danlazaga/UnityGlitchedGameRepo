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

    public void GameOverSceme()
    {
        SceneManager.LoadSceneAsync("GameOverScene");
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