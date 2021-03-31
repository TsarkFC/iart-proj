using System;
using System.Collections.Generic;
using levelmenu;
using aimenu;
using menu;

namespace mainmenu
{
    public class MainMenu : Menu
    {
        public MainMenu()
        {
            List<string> options = new List<string>();
            options.Add("[1] Singleplayer");
            options.Add("[2] AI");
            options.Add("[0] Quit");
            base.options = options;
        }

        public override Menu ProcessInput(ConsoleKeyInfo keyInfo)
        {
            switch (keyInfo.Key)
            {
                case ConsoleKey.D1:
                    return new LevelMenu(false);
                case ConsoleKey.D2:
                    return new LevelMenu(true);
                case ConsoleKey.D0:
                    System.Environment.Exit(0);
                    return null;
                default:
                    Console.WriteLine("ERROR: Only numeric keys!");
                    return this;
            }
        }
    }
}