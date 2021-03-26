using System;
using System.Collections.Generic;
using mainmenu;
using menu;
using game;
using levels;

namespace levelmenu
{
    public class LevelMenu : Menu
    {
        //Menu redirect;
        public LevelMenu(Menu redirect)
        {
            //this.redirect = redirect;

            List<string> options = new List<string>();
            options.Add("[1] Level 1");
            options.Add("[2] Level 2");
            options.Add("[3] Level 3");
            options.Add("[4] Level 4");
            options.Add("[5] Level 5");
            options.Add("[6] Level 6");
            options.Add("[7] Level 7");
            options.Add("[8] Level 8");
            options.Add("[9] Level 9");
            options.Add("[0] Go Back");
            base.options = options;
        }

        public override Menu ProcessInput(ConsoleKeyInfo keyInfo)
        {
            Game game;
            switch (keyInfo.Key)
            {
                case ConsoleKey.D1:
                    game = new Game(Levels.level1);
                    game.RunGame();
                    break;
                case ConsoleKey.D2:
                    game = new Game(Levels.level2);
                    game.RunGame();
                    break;
                case ConsoleKey.D3:
                    game = new Game(Levels.level3);
                    game.RunGame();
                    break;
                case ConsoleKey.D4:
                    game = new Game(Levels.level4);
                    game.RunGame();
                    break;
                case ConsoleKey.D5:
                    game = new Game(Levels.level5);
                    game.RunGame();
                    break;
                case ConsoleKey.D6:
                    game = new Game(Levels.level6);
                    game.RunGame();
                    break;
                case ConsoleKey.D7:
                    game = new Game(Levels.level7);
                    game.RunGame();
                    break;
                case ConsoleKey.D8:
                    game = new Game(Levels.level8);
                    game.RunGame();
                    break;
                case ConsoleKey.D9:
                    game = new Game(Levels.level9);
                    game.RunGame();
                    break;
                case ConsoleKey.D0:
                    return new MainMenu();
                default:
                    Console.WriteLine("ERROR: Only numeric keys!");
                    return this;
            }

            base.GameOver();
            return this;
        }
    }
}