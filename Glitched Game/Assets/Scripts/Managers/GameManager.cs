using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : Singleton<GameManager>
{

    public delegate void OnGameStart();
    public event OnGameStart onStartGame;

    private void Awake()
    {
        instance = this;
    }

    public void StartGame()
    {
        if (onStartGame != null)
        {
            StartGame();
        }
    }

}