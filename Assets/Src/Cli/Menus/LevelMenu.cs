using System;
using System.Collections.Generic;
using mainmenu;
using menu;
using game;
using levels;
using piecetype;
using aimenu;

namespace levelmenu
{
    public class LevelMenu : Menu
    {
        bool ai;
        public LevelMenu(bool ai)
        {
            this.ai = ai;

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
            PieceType[,] level;
            switch (keyInfo.Key)
            {
                case ConsoleKey.D1:
                    level = Levels.level1;
                    break;
                case ConsoleKey.D2:
                    level = Levels.level2;
                    break;
                case ConsoleKey.D3:
                    level = Levels.level3;
                    break;
                case ConsoleKey.D4:
                    level = Levels.level4;
                    break;
                case ConsoleKey.D5:
                    level = Levels.level5;
                    break;
                case ConsoleKey.D6:
                    level = Levels.level6;
                    break;
                case ConsoleKey.D7:
                    level = Levels.level7;
                    break;
                case ConsoleKey.D8:
                    level = Levels.level8;
                    break;
                case ConsoleKey.D9:
                    level = Levels.level9;
                    break;
                case ConsoleKey.D0:
                    return new MainMenu();
                default:
                    Console.WriteLine("ERROR: Only numeric keys!");
                    return this;
            }
            if (ai)
                return new AIMenu(level);
            else {
                Console.WriteLine("\n\nUse arrow keys to move the pieces");
                Console.WriteLine("Press [h] to see a hint");
                Console.WriteLine("Press [q] to quit");   
                new Game(level).RunGame();
            }

            base.GameOver();
            return this;
        }
    }
}