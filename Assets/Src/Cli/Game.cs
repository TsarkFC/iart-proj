using System;
using System.Collections.Generic;
using logic;
using robot;
using state;

// namespace declaration 
namespace game
{

    // Class declaration 
    public class Game
    {
        private Logic logic;
        private Robot robot;
        private State state;
        // Main Method 
        static void Main(string[] args)
        {
            Game game = new Game();
            //game.RunGame();
            game.RunAI();
        }

        public Game()
        {
            this.state = new State();
            this.logic = new Logic(this.state);
            this.robot = new Robot(this.logic);
        }

        private void RunGame()
        {
            while (true)
            {
                state.PrintBoard();
                logic.Move(Console.ReadKey());
                if (logic.VerifyEndGame()) break;
            }
        }
        
        private void RunAI()
        {
            robot.Run();
        }
    }
}