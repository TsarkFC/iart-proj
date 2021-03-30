using System;
using System.Collections.Generic;
using logic;
using robot;
using state;
using piecetype;
using node;
using direction;

// namespace declaration 
namespace game
{
    // Class declaration 
    public class Game
    {
        private Logic logic;
        private Robot robot;
        private State state;

        public Game(PieceType[,] level)
        {
            this.state = new State(level, level.GetLength(0), level.GetLength(1));
            this.logic = new Logic(this.state);
            this.robot = new Robot(this.logic);
        }

        public void RunGame()
        {
            while (true)
            {
                state.PrintBoard();
                ConsoleKeyInfo keyInfo = Console.ReadKey();
                if (keyInfo.Key == ConsoleKey.H) {
                    Direction hintDirection = robot.Hint();
                    Console.WriteLine(" [HINT] " + hintDirection.movement);
                    state = logic.state;
                }
                else if (keyInfo.Key == ConsoleKey.Q) {
                    Console.WriteLine(" [QUIT] ");
                    break;
                }
                else {
                    logic.Move(keyInfo);
                }
                if (logic.VerifyEndGame()) break;
            }
        }
        
        public void RunAI()
        {
            robot.Run();
        }
    }
}