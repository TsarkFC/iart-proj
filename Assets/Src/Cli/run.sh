mcs -out:Game.exe Game.cs Logic.cs ../GameLogic/Piece.cs ../GameLogic/Position.cs ../GameLogic/PieceOrderer.cs Robot.cs State.cs Cloner.cs
mono Game.exe
