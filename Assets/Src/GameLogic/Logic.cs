using System;
using System.Collections.Generic;
using piece;
using position;
using piece_orderer;

// namespace declaration 
namespace logic
{

    // Class declaration 
    class Logic
    {
        int xDim = 4;
        int yDim = 4;
        String[,] board = new String[,] {{"x", "tp", " ", " "},
                                        {"x", "x", "tp", "pp"},
                                        {" ", "x", " ", "pp"},
                                        {" ", " ", "x", " "}};

        List<Piece> pieces = new List<Piece>();
        PieceOrderer pieceOrderer = new PieceOrderer();

        // Main Method 
        static void Main(string[] args)
        {
            Logic logic = new Logic();
            logic.pieces.Add(new Piece("pp", new Position(3, 1)));
            logic.pieces.Add(new Piece("pp", new Position(3, 2)));

            while (true)
            {
                logic.PrintBoard();
                ConsoleKeyInfo keyInfo = Console.ReadKey();
                if (keyInfo.Key == ConsoleKey.LeftArrow)
                {
                    Console.WriteLine("Move left");
                    Console.WriteLine(logic.MoveLeft());
                }
                else if (keyInfo.Key == ConsoleKey.RightArrow)
                {
                    Console.WriteLine("Move right");
                    Console.WriteLine(logic.MoveRight());
                }
                else if (keyInfo.Key == ConsoleKey.UpArrow)
                {
                    Console.WriteLine("Move up");
                    Console.WriteLine(logic.MoveUp());
                }
                else if (keyInfo.Key == ConsoleKey.DownArrow)
                {
                    Console.WriteLine("Move down");
                    Console.WriteLine(logic.MoveDown());
                }
            }
        }

        public bool MoveLeft()
        {
            return Move(new Position(-1, 0));
        }

        public bool MoveRight()
        {
            return Move(new Position(1, 0));
        }

        public bool MoveUp()
        {
            return Move(new Position(0, -1));
        }

        public bool MoveDown()
        {
            return Move(new Position(0, 1));
        }

        private bool Move(Position direction)
        {
            bool Moved = false;

            pieceOrderer.direction = direction;
            pieces.Sort(pieceOrderer);

            foreach (Piece piece in pieces)
            {
                Position nextPos = getNextPosition(direction, piece);
                if (nextPos == null) continue;
                Moved = true;
                ApplyMove(nextPos, piece);
                //newPieces.Add(new Tuple<Position, Piece>(nextPos, piece));
            }
            return Moved;
        }

        private Position getNextPosition(Position direction, Piece piece)
        {
            Position nextPos = piece.position;
            while (true)
            {
                nextPos += direction;

                if (!InBounds(nextPos))
                {
                    nextPos -= direction;
                    break;
                }
                if (board[nextPos.y, nextPos.x] != " " && board[nextPos.y, nextPos.x] != "tp")
                {
                    nextPos -= direction;
                    break;
                }
            }
            if (nextPos.Equals(piece.position)) return null;
            return nextPos;
        }

        private bool InBounds(Position position)
        {
            if (position.x >= xDim || position.x < 0) return false;
            if (position.y >= yDim || position.y < 0) return false;
            return true;
        }

        private void ApplyMove(Position nextPos, Piece piece)
        {
            board[nextPos.y, nextPos.x] = piece.symbol;
            board[piece.position.y, piece.position.x] = " ";
            piece.position = nextPos;
        }

        private void PrintBoard()
        {
            int rowLength = board.GetLength(0);
            int colLength = board.GetLength(1);

            for (int row = 0; row < rowLength; row++)
            {
                for (int col = 0; col < colLength; col++)
                {
                    Console.Write(String.Format("|{0}\t|", board[row,col]));
                }
                Console.WriteLine();
            }
        }
    }
}