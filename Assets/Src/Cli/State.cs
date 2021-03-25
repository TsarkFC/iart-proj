using System;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using piece;
using position;

// namespace declaration 
namespace state
{
    // Class declaration 
    [Serializable]
    public class State
    {
        public int xDim { get; }
        public int yDim { get; }
        public String[,] board;
        public List<Piece> pieces;
        public List<Piece> targets;

        public State()
        {
            pieces = new List<Piece>();
            targets = new List<Piece>();
            xDim = 4;
            yDim = 4;
            this.board = new String[,] {{"o", " ", " ", "tp"},
                                        {"o", " ", " ", "o"},
                                        {" ", "pr", " ", "tr"},
                                        {" ", " ", "o", "pp"}};
            GameStart();
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
            Console.WriteLine();
        }

        public override bool Equals(Object obj) {
            if (!(obj is State)) return false;
            State state = (State)obj;

            foreach (Piece piece in pieces)
                if (!state.pieces.Contains(piece)) return false;
            return true;
        }

        public override int GetHashCode() => 0;
    }

}