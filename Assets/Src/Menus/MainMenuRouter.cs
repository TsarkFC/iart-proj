using UnityEngine;

public class MainMenuRouter : MonoBehaviour
{
    public GameObject mainMenu, singlePlayerMenu, aiMenu, reinforcementdMenu;

    // Start is called before the first frame update
    void Start()
    {
        if (GameMode.menuState == GameMode.MenuStates.AI)
        {
            mainMenu.SetActive(false);
            aiMenu.SetActive(true);
        }
        else if (GameMode.menuState == GameMode.MenuStates.SINGLE_PLAYER)
        {
            mainMenu.SetActive(false);
            singlePlayerMenu.SetActive(true);
        }
        else if (GameMode.menuState == GameMode.MenuStates.REINFORCEMENT_LEARNING)
        {
            mainMenu.SetActive(false);
            reinforcementdMenu.SetActive(true);
        }
    }
}
