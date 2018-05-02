using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

    public static GameManager instance;
    public static GameManager Instance
    {
        get
        {
            return instance;
        }
    }

    public delegate void OnGameStart();
    public event OnGameStart StartGame;


    private void Awake()
    {
        instance = this;
    }

    public void OnStartGame()
    {
        if(StartGame != null)
        {
            StartGame();
        }
    }

}
