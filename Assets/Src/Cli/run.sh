mcs -out:Run.exe Game/Game.cs Game/Logic.cs Game/State.cs ../Utils/Direction.cs ../Utils/PieceType.cs ../Utils/Piece.cs ../Utils/Position.cs ../Utils/PieceOrderer.cs ../AI/Robot.cs ../AI/Node.cs ../AI/Cloner.cs Menus/AIMenu.cs Menus/LevelMenu.cs Menus/MainMenu.cs Menus/Menu.cs Run.cs ../Levels/Levels.cs ../Levels/Movement.cs
mono Run.exe
