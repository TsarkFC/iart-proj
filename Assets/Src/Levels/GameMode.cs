using algorithmtype;

public class GameMode
{
    public enum Mode
    {
        AI,
        HUMAN,
        AGENT
    }

    public static Mode mode = Mode.HUMAN;
    public static AlgorithmType algorithm;

    public enum MenuStates
    {
        MAIN_MENU,
        SINGLE_PLAYER,
        AI,
        REINFORCEMENT_LEARNING
    }

    public static MenuStates menuState = MenuStates.MAIN_MENU;
}