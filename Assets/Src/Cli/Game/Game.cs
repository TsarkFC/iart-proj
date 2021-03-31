using System;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using logic;
using robot;
using state;
using piecetype;
using node;
using direction;
using algorithmtype;

// namespace declaration 
namespace game
{
    // Class declaration
    [Serializable]
    public class Game
    {
        private Logic logic;
        private Robot robot;
        private State state;

        public Game(PieceType[,] level)
        {
            this.state = new State(level, level.GetLength(0), level.GetLength(1));
            this.robot = new Robot(this.state);
        }

        public void RunGame()
        {
            while (true)
            {
                state.PrintBoard();
                ConsoleKeyInfo keyInfo = Console.ReadKey();
                if (keyInfo.Key == ConsoleKey.H) {
                    Movement.MovementType hintDirection = robot.Hint();
                    Console.WriteLine(" [HINT] " + hintDirection);
                    //state = logic.state;
                }
                else if (keyInfo.Key == ConsoleKey.Q) {
                    Console.WriteLine(" [QUIT] ");
                    break;
                }
                else {
                    Logic.Move(this.state, keyInfo);
                }
                if (Logic.VerifyEndGame(this.state)) break;
            }
        }
        
        public void RunAI(AlgorithmType algorithm)
        {
            Robot.PrintSearchPath(robot.RunWithoutMeasurements(algorithm));
        }
    }
}