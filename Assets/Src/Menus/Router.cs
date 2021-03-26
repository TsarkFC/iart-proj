using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Router : MonoBehaviour
{
    public void QuitGame()
    {
        Debug.Log("QUIT");
        Application.Quit();
    }

    public void BackToMenu() 
    {
        //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex - 1);
        SceneManager.LoadScene(0);
    }

    public void playSinglePlayer(int lvlIndex)
    {
        GameMode.mode = GameMode.Mode.HUMAN;
        SceneManager.LoadScene(lvlIndex);
    }

    public void playAI(int lvlIndex)
    {
        GameMode.mode = GameMode.Mode.AI;
        SceneManager.LoadScene(lvlIndex);
    }
}
