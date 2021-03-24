using System;
using System.Collections.Generic;
using piece;
using position;
using piece_orderer;

// namespace declaration 
namespace logic
{

    // Class declaration 
    public class Logic
    {
        int xDim = 4;
        int yDim = 4;
        String[,] board = new String[,] {{"o", " ", " ", "tp"},
                                        {"o", " ", " ", "o"},
                                        {" ", "pr", " ", "tr"},
                                        {" ", " ", "o", "pp"}};

        List<Piece> pieces = new List<Piece>();
        List<Piece> targets = new List<Piece>();

        PieceOrderer pieceOrderer = new PieceOrderer();

        public Logic()
        {
            GameStart();
        }

        public Dictionary<Position, Position> Move(ConsoleKeyInfo keyInfo) 
        {
            switch(keyInfo.Key) {
                case ConsoleKey.DownArrow:
                    return Move(new Position(0, 1));
                case ConsoleKey.UpArrow:
                    return Move(new Position(0, -1));
                case ConsoleKey.LeftArrow:
                    return Move(new Position(-1, 0));
                case ConsoleKey.RightArrow:
                    return Move(new Position(1, 0));
                default: 
                    return null;
            }
        }

        public Dictionary<Position, Position> Move(Position direction)
        {
            bool Moved = false;

            pieceOrderer.direction = direction;
            pieces.Sort(pieceOrderer);

            Dictionary<Position, Position> prevNextPosition = new Dictionary<Position, Position>();

            foreach (Piece piece in pieces)
            {
                Position nextPos = getNextPosition(direction, piece);
                prevNextPosition.Add(piece.position, nextPos);
                if (nextPos == null) continue;
                Moved = true;
                ApplyMove(nextPos, piece);
            }

            return Moved == true ? prevNextPosition : null;
        }

        private Position getNextPosition(Position direction, Piece piece)
        {
            Position nextPos = piece.position;
            Position temp = null;
            while (true)
            {
                temp = nextPos + direction;

                if (!InBounds(temp)) break;
                if (board[temp.y, temp.x] != " " && board[temp.y, temp.x][0] != 't')
                    break;

                nextPos += direction;
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
            if (!replaceTargets(piece))
                board[piece.position.y, piece.position.x] = " ";
            piece.position = nextPos;
        }

        public void PrintBoard()
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

        public bool VerifyEndGame()
        {
            int size = pieces.Count;
            int correct = 0;

            foreach (Piece target in targets)
            {
                foreach(Piece piece in pieces) 
                {
                    if (target.position.Equals(piece.position) && target.symbol[1] == piece.symbol[1])
                    {
                        correct++;
                    }
                }
            }
            return correct == size;
        }

        private bool replaceTargets(Piece piece)
        {
            foreach (Piece target in targets)
                if (target.position.Equals(piece.position))
                {
                    board[piece.position.y, piece.position.x] = target.symbol;
                    return true;
                }
            return false;
        }

        private void GameStart()
        {
            for (int y = 0; y < yDim; y++)
            {
                for (int x = 0; x < xDim; x++)
                {
                    if (board[y, x] == "pp" || board[y, x] == "pr" || board[y, x] == "po")
                    {
                        Piece piece = new Piece(board[y, x], new Position(x, y));
                        pieces.Add(piece);
                    } 
                    else if (board[y, x] == "tp" || board[y, x] == "tr" || board[y, x] == "to")
                    {
                        targets.Add(new Piece(board[y, x], new Position(x, y)));
                    }
                }
            }
        }
    }
}