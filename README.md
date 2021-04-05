## Graphical interface running instruction
- `Windows Build`: excute the IARTistas.exe file present in group35WindowsBuild64.zip
- `Linux Build`: excute the IARTgroup35.x86_64 file present group35LinuxBuild64.zip
- Navigate through the menus with keyboard keys or the mouse.
- Use the keyboard arrow keys to move the pieces while in the game. 

## CLI running instructions
- In the directory `Assets/Src/Cli` execute `./run.sh`
In case of failure run the following commands:
    - `mcs -out:Run.exe Game/Game.cs Game/Logic.cs Game/State.cs Game/CliSymbols.cs ../Menus/StatsInfo.cs ../Utils/Direction.cs ../Utils/StatsResults.cs ../Utils/PieceType.cs ../Utils/Piece.cs ../Utils/Position.cs ../Utils/PieceOrderer.cs ../Utils/MemoryMonitor.cs ../AI/Robot.cs ../AI/Node.cs ../AI/Cloner.cs ../AI/AlgorithmType.cs ../AI/Heuristic.cs ../AI/PriorityQueue.cs Menus/AIMenu.cs Menus/LevelMenu.cs Menus/MainMenu.cs Menus/Menu.cs Run.cs ../Levels/Levels.cs ../Levels/Movement.cs` 
  -  `mono Run.exe`

- Use numeric keys to navigate in the menus.
- Use arrow keys to move the pieces while in game.