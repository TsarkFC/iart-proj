using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SingleplayerUnlocker : MonoBehaviour
{
    public Button[] lvlButtons;
    void Start()
    {
        int levelAt = PlayerPrefs.GetInt("levelAt", 9);

        for (int i = levelAt; i < lvlButtons.Length; i++)
        {
            lvlButtons[i].interactable = false;
        }
    }
}
