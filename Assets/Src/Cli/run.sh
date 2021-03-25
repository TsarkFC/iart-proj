mcs -out:Run.exe Game/Game.cs Game/Logic.cs Game/State.cs ../GameLogic/Piece.cs ../GameLogic/Position.cs ../GameLogic/PieceOrderer.cs ../AI/Robot.cs ../AI/Node.cs ../AI/Cloner.cs Menus/AIMenu.cs Menus/LevelMenu.cs Menus/MainMenu.cs Menus/Menu.cs Run.cs
mono Run.exe
