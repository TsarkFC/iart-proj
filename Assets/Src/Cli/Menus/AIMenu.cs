using System;
using System.Collections.Generic;
using game;
using menu;

namespace aimenu
{
    public class AIMenu : Menu
    {
        public AIMenu()
        {
            List<string> options = new List<string>();
            options.Add("[1] BFS");
            options.Add("[2] DFS");
            options.Add("[3] Iterative Deepening");
            options.Add("[4] Greedy Search");
            options.Add("[5] A Star");
            options.Add("[0] Go Back");
            base.options = options;
        }

        public override Menu ProcessInput(ConsoleKeyInfo keyInfo)
        {
            Game game = new Game();

            switch (keyInfo.Key)
            {
                case ConsoleKey.D1:
                    game.RunAI();
                    break;
                case ConsoleKey.D2:
                    game.RunAI();
                    break;
                case ConsoleKey.D3:
                    game.RunAI();
                    break;
                case ConsoleKey.D4:
                    game.RunAI();
                    break;
                case ConsoleKey.D5:
                    game.RunAI();
                    break;
                case ConsoleKey.D0:
                    game.RunAI();
                    break;
                default:
                    Console.WriteLine("ERROR: Only numeric keys!");
                    return this;
            }

            base.GameOver();
            return this;
        }
    }
}