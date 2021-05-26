using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using algorithmtype;

public class Router : MonoBehaviour
{
    private static int aiLvlIndex;

    public void SetAiLvlIndex(int lvl)
    {
        aiLvlIndex = lvl;
    }

    public void QuitGame()
    {
        Application.Quit();
    }

    public void BackToMenu() 
    {
        if (GameMode.mode == GameMode.Mode.HUMAN) GameMode.menuState = GameMode.MenuStates.SINGLE_PLAYER;
        if (GameMode.mode == GameMode.Mode.AI) GameMode.menuState = GameMode.MenuStates.AI;
        if (GameMode.mode == GameMode.Mode.AGENT) GameMode.menuState = GameMode.MenuStates.REINFORCEMENT_LEARNING;
        SceneManager.LoadScene(0);
    }

    public void GoToMainMenu()
    {
        GameMode.menuState = GameMode.MenuStates.MAIN_MENU;
        SceneManager.LoadScene(0);
    }

    public void LoadTraining()
    {
        SceneManager.LoadScene(25);
    }

    public void LoadNewScene()
    {
        SceneManager.LoadScene(26);
    }

    public void PlaySinglePlayer(int lvlIndex)
    {
        StatsInfo.ResetAlgoResults();
        GameMode.mode = GameMode.Mode.HUMAN;
        SceneManager.LoadScene(lvlIndex);
    }

    public void PlayAI(int algorithm)
    {
        GameMode.mode = GameMode.Mode.AI;
        GameMode.algorithm = (AlgorithmType) algorithm;
        SceneManager.LoadScene(aiLvlIndex);
    }

    public void PlayAgent(int lvlIndex)
    {
        StatsInfo.ResetAlgoResults();
        GameMode.mode = GameMode.Mode.AGENT;
        SceneManager.LoadScene(lvlIndex + 12);
    }


}
