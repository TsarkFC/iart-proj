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
        if (GameMode.mode == GameMode.Mode.HUMAN) GameMode.menuState = GameMode.MenuStates.SINGLE_PLAYER;
        if (GameMode.mode == GameMode.Mode.AI) GameMode.menuState = GameMode.MenuStates.AI;
        SceneManager.LoadScene(0);
    }

    public void GoToMainMenu()
    {
        GameMode.menuState = GameMode.MenuStates.MAIN_MENU;
        SceneManager.LoadScene(0);
    }

    public void playSinglePlayer(int lvlIndex)
    {
        StatsInfo.ResetAlgoResults();
        GameMode.mode = GameMode.Mode.HUMAN;
        SceneManager.LoadScene(lvlIndex);
    }

    public void playAI(int lvlIndex)
    {
        GameMode.mode = GameMode.Mode.AI;
        SceneManager.LoadScene(lvlIndex);
    }
}
