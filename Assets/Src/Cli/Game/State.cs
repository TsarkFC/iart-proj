using System;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using piece;
using position;
using piecetype;
using clisymbols;

// namespace declaration 
namespace state
{
    // Class declaration 
    [Serializable]
    public class State
    {
        public int xDim { get; }
        public int yDim { get; }
        public string[,] board;
        public PieceType[,] originalBoard { get; }
        public List<Piece> pieces = new List<Piece>();
        public List<Piece> targets = new List<Piece>();

        private string[] boardElements = new string[] { "pp", "tp", "po", "to", "pr", "tr", "o", " " };



        public State(PieceType[,] board, int xDim, int yDim)
        {
            this.xDim = xDim;
            this.yDim = yDim;
            this.board = new string[ xDim, yDim ];
            this.originalBoard = board;
            

            for (int y = 0; y < yDim; y++)
            {
                for (int x = 0; x < xDim; x++)
                {
                    this.board[y, x] = boardElements[(int) board[y, x]];
                }
            }

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
                        pieces.Add(new Piece(board[y, x], new Position(x, y)));
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

            Console.WriteLine();
            for (int row = 0; row < rowLength; row++)
            {
                for (int col = 0; col < colLength; col++)
                {
                    Console.Write(String.Format("{0} ", CliSymbols.symbols[board[row,col]]));
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