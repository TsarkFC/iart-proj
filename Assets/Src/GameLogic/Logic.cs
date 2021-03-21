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
        String[,] board = new String[,] {{"x", "tp", " ", "pp"},
                                    {"x", "x", "tp", "pp"},
                                    {" ", "x", " ", " "},
                                    {" ", " ", "x", " "}};

        List<Piece> pieces = new List<Piece>();
        PieceOrderer pieceOrderer = new PieceOrderer();

        // Main Method 
        static void Main(string[] args)
        {
            Logic logic = new Logic();
            logic.pieces.Add(new Piece("pp", new Position(3, 0)));
            logic.pieces.Add(new Piece("pp", new Position(3, 1)));

            while (true)
            {
                Console.WriteLine("move left");
                Console.WriteLine(logic.moveLeft());
                Console.WriteLine("move right");
                Console.WriteLine(logic.moveRight());
                Console.WriteLine("move up");
                Console.WriteLine(logic.moveUp());
                Console.WriteLine("move down");
                Console.WriteLine(logic.moveDown());
                Console.ReadKey();
            }
        }

        public bool moveLeft()
        {
            List<Tuple<Position, Piece>> playPosition = getMoves(new Position(-1, 0));
            if (playPosition.Capacity == 0) return false;

            return true;
        }

        public bool moveRight()
        {
            List<Tuple<Position, Piece>> playPosition = getMoves(new Position(1, 0));
            if (playPosition.Capacity == 0) return false;

            return true;
        }

        public bool moveUp()
        {
            List<Tuple<Position, Piece>> playPosition = getMoves(new Position(0, -1));
            if (playPosition.Capacity == 0) return false;

            return true;
        }

        public bool moveDown()
        {
            List<Tuple<Position, Piece>> playPosition = getMoves(new Position(0, 1));
            if (playPosition.Capacity == 0) return false;

            return true;
        }

        private List<Tuple<Position, Piece>> getMoves(Position direction)
        {
            List<Tuple<Position, Piece>> newPieces = new List<Tuple<Position, Piece>>();

            foreach (Piece piece in pieces)
            {
                Console.WriteLine(piece.position.x + " " + piece.position.y);
            }
            pieceOrderer.direction = direction;
            pieces.Sort(pieceOrderer);
            foreach (Piece piece in pieces)
            {
                Console.WriteLine(piece.position.x + " " + piece.position.y);
            }

            foreach (Piece piece in pieces)
            {
                Position nextPos = getNextPosition(direction, piece);
                if (nextPos == null) continue;
                newPieces.Add(new Tuple<Position, Piece>(nextPos, piece));
            }
            return newPieces;
        }

        private Position getNextPosition(Position direction, Piece piece)
        {
            Position nextPos = piece.position;
            while (true)
            {
                nextPos += direction;

                if (!inBounds(nextPos))
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

        private bool inBounds(Position position)
        {
            if (position.x >= xDim || position.x < 0) return false;
            if (position.y >= yDim || position.y < 0) return false;
            return true;
        }
    }
}