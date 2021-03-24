using System;
using System.Collections.Generic;
using logic;
using robot;

// namespace declaration 
namespace game
{

    // Class declaration 
    public class Game
    {
        private Logic logic;
        //private Robot robot;
        // Main Method 
        static void Main(string[] args)
        {
            Game game = new Game();
            game.RunGame();
            //game.RunAI();
        }

        public Game()
        {
            this.logic = new Logic();
            //this.robot = new Robot(this.logic);
        }

        private void RunGame()
        {
            while (true)
            {
                logic.PrintBoard();
                logic.Move(Console.ReadKey());
                if (logic.VerifyEndGame()) break;
            }
        }
        
        private void RunAI()
        {
            // obter moves
            // Move[] moves = robot.FindMoves(this.board, this.xDim, this.yDim);

            // foreach(Move move in moves)
            // {
            //     logic.Move(move);
            // }
        }
    }
}