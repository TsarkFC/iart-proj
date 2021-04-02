using algorithmtype;

public class GameMode
{
    public enum Mode
    {
        AI,
        HUMAN
    }

    public static Mode mode = Mode.HUMAN;
    public static AlgorithmType algorithm;

    public enum MenuStates
    {
        MAIN_MENU,
        SINGLE_PLAYER,
        AI
    }

    public static MenuStates menuState = MenuStates.MAIN_MENU;
}