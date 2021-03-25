using System;
using System.Collections.Generic;

namespace menu
{
    public abstract class Menu
    {
        protected List<string> options = new List<string>();

        public abstract Menu ProcessInput(ConsoleKeyInfo keyInfo);
        public ConsoleKeyInfo ReadInput() => Console.ReadKey();
        protected void GameOver()
        {
            Console.WriteLine("Press any key to continue...");
            ReadInput();
        }
        
        public void Display()
        {
            Console.WriteLine("       Sliding Tiles       \n\n");
            foreach(string option in options)
                Console.WriteLine(option);
        }
    }
}