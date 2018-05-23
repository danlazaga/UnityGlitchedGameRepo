using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.SceneManagement;

public class GameManager :NetworkBehaviour
{
    public static GameManager instance;
    public static GameManager Instance
    {
        get
        {
            if(instance != null)
            {
                instance = FindObjectOfType<GameManager>();
            }
            return instance;
        }
    }

    public delegate void OnForceSpawn();
    public event OnForceSpawn onForceSpawn;

    public delegate void OnGameStart();
    public event OnGameStart onStartGame;

    [ClientRpc]
	public void RpcGameOverScreen()
	{
		SceneManager.LoadSceneAsync ("GameOverScene");
	}

    public void ForceSpawn()
    {
        if(onForceSpawn != null)
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