using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : Singleton<GameManager>
{

    public delegate void OnGameStart();
    public event OnGameStart onStartGame;

   
	public void GameOverScreen()
	{
		SceneManager.LoadSceneAsync ("GameOverScene");
	}

    public void StartGame()
    {
        if (onStartGame != null)
        {
            onStartGame();
        }
    }

}