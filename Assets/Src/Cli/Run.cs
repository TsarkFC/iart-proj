using System;
using System.Collections.Generic;
using menu;
using mainmenu;

public class Run
{
    static void Main(string[] args)
    {
        Menu menu = new MainMenu();
        while (true)
        {
            menu.Display();
            menu = menu.ProcessInput(menu.ReadInput());
        }
    }
}