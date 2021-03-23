// using System;
// using System.Collections.Generic;
// using piece;
// using position;
// using piece_orderer;

// // namespace declaration 
// namespace logic
// {

//     // Class declaration 
//     class Logic
//     {
//         int xDim = 4;
//         int yDim = 4;
//         String[,] board = new String[,] {{"o", " ", " ", "tp"},
//                                         {"o", " ", " ", "o"},
//                                         {" ", "pr", " ", "tr"},
//                                         {" ", " ", "o", "pp"}};

//         List<Piece> pieces = new List<Piece>();
//         List<Piece> pieces_copy = new List<Piece>();
//         List<Piece> targets = new List<Piece>();

//         PieceOrderer pieceOrderer = new PieceOrderer();

//         // Main Method 
//         static void Main(string[] args)
//         {
//             Logic logic = new Logic();
//             logic.GameStart();

//             Console.WriteLine("PIECES: " + logic.pieces.Count.ToString());
//             Console.WriteLine("TARGETS: " + logic.targets.Count.ToString());

//             while (true)
//             {
//                 logic.PrintBoard();
//                 ConsoleKeyInfo keyInfo = Console.ReadKey();
//                 if (keyInfo.Key == ConsoleKey.LeftArrow)
//                 {
//                     Console.WriteLine("Move left");
//                     Console.WriteLine(logic.MoveLeft());
//                 }
//                 else if (keyInfo.Key == ConsoleKey.RightArrow)
//                 {
//                     Console.WriteLine("Move right");
//                     Console.WriteLine(logic.MoveRight());
//                 }
//                 else if (keyInfo.Key == ConsoleKey.UpArrow)
//                 {
//                     Console.WriteLine("Move up");
//                     Console.WriteLine(logic.MoveUp());
//                 }
//                 else if (keyInfo.Key == ConsoleKey.DownArrow)
//                 {
//                     Console.WriteLine("Move down");
//                     Console.WriteLine(logic.MoveDown());
//                 }
//                 if (logic.VerifyEndGame()) break;
//             }
//         }

//         public bool MoveLeft()
//         {
//             return Move(new Position(-1, 0));
//         }

//         public bool MoveRight()
//         {
//             return Move(new Position(1, 0));
//         }

//         public bool MoveUp()
//         {
//             return Move(new Position(0, -1));
//         }

//         public bool MoveDown()
//         {
//             return Move(new Position(0, 1));
//         }

//         private bool Move(Position direction)
//         {
//             bool Moved = false;

//             pieceOrderer.direction = direction;
//             pieces.Sort(pieceOrderer);

//             foreach (Piece piece in pieces)
//             {
//                 Position nextPos = getNextPosition(direction, piece);
//                 if (nextPos == null) continue;
//                 Moved = true;
//                 ApplyMove(nextPos, piece);
//             }
//             return Moved;
//         }

//         private Position getNextPosition(Position direction, Piece piece)
//         {
//             Position nextPos = piece.position;
//             Position temp = null;
//             while (true)
//             {
//                 temp = nextPos + direction;

//                 if (!InBounds(temp)) break;
//                 if (board[temp.y, temp.x] != " " && board[temp.y, temp.x][0] != 't')
//                     break;

//                 nextPos += direction;
//             }
//             if (nextPos.Equals(piece.position)) return null;
//             return nextPos;
//         }

//         private bool InBounds(Position position)
//         {
//             if (position.x >= xDim || position.x < 0) return false;
//             if (position.y >= yDim || position.y < 0) return false;
//             return true;
//         }

//         private void ApplyMove(Position nextPos, Piece piece)
//         {
//             board[nextPos.y, nextPos.x] = piece.symbol;
//             if (!replaceTargets(piece))
//                 board[piece.position.y, piece.position.x] = " ";
//             piece.position = nextPos;
//         }

//         private void PrintBoard()
//         {
//             int rowLength = board.GetLength(0);
//             int colLength = board.GetLength(1);

//             for (int row = 0; row < rowLength; row++)
//             {
//                 for (int col = 0; col < colLength; col++)
//                 {
//                     Console.Write(String.Format("|{0}\t|", board[row,col]));
//                 }
//                 Console.WriteLine();
//             }
//         }

//         private bool VerifyEndGame()
//         {
//             int size = pieces.Count;
//             for (int i = 0; i < size; i++)
//             {
//                 if (!pieces_copy[i].position.Equals(targets[i].position)) return false;
//             }
//             return true;
//         }

//         private bool replaceTargets(Piece piece)
//         {
//             foreach (Piece target in targets)
//                 if (target.position.Equals(piece.position))
//                 {
//                     board[piece.position.y, piece.position.x] = target.symbol;
//                     return true;
//                 }
//             return false;
//         }

//         private void GameStart()
//         {
//             Piece p1 = new Piece("pp", new Position(3, 3));
//             Piece p2 = new Piece("pr", new Position(1, 2));

//             pieces.Add(p1);
//             pieces.Add(p2);
//             pieces_copy.Add(p1);
//             pieces_copy.Add(p2);
//             targets.Add(new Piece("tp", new Position(3, 0)));
//             targets.Add(new Piece("tr", new Position(3, 2)));
//         }
//     }
// }