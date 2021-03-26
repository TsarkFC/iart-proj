using System;
using System.Collections.Generic;
using logic;
using robot;
using state;
using piecetype;

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
                logic.Move(Console.ReadKey());
                if (logic.VerifyEndGame()) break;
            }
        }
        
        public void RunAI()
        {
            robot.Run();
        }
    }
}