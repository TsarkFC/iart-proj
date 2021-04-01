using System;
using System.Collections.Generic;
using game;
using menu;
using levels;
using mainmenu;
using algorithmtype;
using cloner;
using piecetype;

namespace aimenu
{
    public class AIMenu : Menu
    {
        PieceType[,] level;

        public AIMenu(PieceType[,] level)
        {
            this.level = level;
            List<string> options = new List<string>();
            options.Add("[1] BFS");
            options.Add("[2] DFS");
            options.Add("[3] Iterative Deepening");
            options.Add("[4] Greedy Search");
            options.Add("[5] A Star");
            options.Add("[6] Compare all algorithms");
            options.Add("[0] Go Back");
            base.options = options;
        }

        public override Menu ProcessInput(ConsoleKeyInfo keyInfo)
        {
            AlgorithmType algorithm;
            switch (keyInfo.Key)
            {
                case ConsoleKey.D1:
                    algorithm = AlgorithmType.BFS;
                    break;
                case ConsoleKey.D2:
                    algorithm = AlgorithmType.DFS;
                    break;
                case ConsoleKey.D3:
                    algorithm = AlgorithmType.IT_DEEPENING;
                    break;
                case ConsoleKey.D4: // TODO add greedy manhattan
                    algorithm = AlgorithmType.GREEDY_DIRECTION;
                    break;
                case ConsoleKey.D5: // TODO add astar manhattan
                    algorithm = AlgorithmType.ASTAR_DIRECTION;
                    break;
                case ConsoleKey.D6:
                    algorithm = AlgorithmType.ALL;
                    break;
                case ConsoleKey.D0:
                    return new MainMenu();
                default:
                    Console.WriteLine("ERROR: Only numeric keys!");
                    return this;
            }

            new Game(level).RunAI(algorithm);
            base.GameOver();
            return this;
        }
    }
}