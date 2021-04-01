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
        public String[,] board;
        public List<Piece> pieces = new List<Piece>();
        public List<Piece> targets = new List<Piece>();

        public State(PieceType[,] board, int xDim, int yDim)
        {
            this.xDim = xDim;
            this.yDim = yDim;
            this.board = new String[ xDim, yDim ];
            

            for (int y = 0; y < yDim; y++)
            {
                for (int x = 0; x < xDim; x++)
                {
                    switch(board[y, x]) 
                    {
                        case PieceType.PIECE_PURPLE:
                            this.board[y, x] = "pp";
                            break;
                        case PieceType.PIECE_ORANGE:
                            this.board[y, x] = "po";
                            break;
                        case PieceType.PIECE_RED:
                            this.board[y, x] = "pr";
                            break;
                        case PieceType.TARGET_PURPLE:
                            this.board[y, x] = "tp";
                            break;
                        case PieceType.TARGET_ORANGE:
                            this.board[y, x] = "to";
                            break;
                        case PieceType.TARGET_RED:
                            this.board[y, x] = "tr";
                            break;
                        case PieceType.BARRIER:
                            this.board[y, x] = "o";
                            break;
                        case PieceType.EMPTY:
                            this.board[y, x] = " ";
                            break;
                        default:
                            break;
                    }
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