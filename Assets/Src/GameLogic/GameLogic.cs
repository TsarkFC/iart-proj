using System;
using System.Collections.Generic;
using piece;
using position;
using piece_orderer;

public class GameLogic 
{

    String[,] board;

    int xDim, yDim;
    List<Piece> pieces = new List<Piece>();
    List<Piece> pieces_copy = new List<Piece>();
    List<Piece> targets = new List<Piece>();

    PieceOrderer pieceOrderer = new PieceOrderer();
    
    public GameLogic(Level.PieceType[,] board, int xDim, int yDim)
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
                    case Level.PieceType.PIECE_PURPLE:
                        this.board[y, x] = "pp";
                        break;
                    case Level.PieceType.PIECE_ORANGE:
                        this.board[y, x] = "po";
                        break;
                    case Level.PieceType.PIECE_RED:
                        this.board[y, x] = "pr";
                        break;
                    case Level.PieceType.TARGET_PURPLE:
                        this.board[y, x] = "tp";
                        break;
                    case Level.PieceType.TARGET_ORANGE:
                        this.board[y, x] = "to";
                        break;
                    case Level.PieceType.TARGET_RED:
                        this.board[y, x] = "tr";
                        break;
                    case Level.PieceType.BARRIER:
                        this.board[y, x] = "o";
                        break;
                    case Level.PieceType.EMPTY:
                        this.board[y, x] = " ";
                        break;
                    default:
                        break;
                }
            }
        }

        this.GameStart();
    }

    // Main Method 
    // static void Main(string[] args)
    // {
    //     Logic logic = new Logic();
    //     logic.GameStart();

    //     Console.WriteLine("PIECES: " + logic.pieces.Count.ToString());
    //     Console.WriteLine("TARGETS: " + logic.targets.Count.ToString());

    //     while (true)
    //     {
    //         logic.PrintBoard();
    //         ConsoleKeyInfo keyInfo = Console.ReadKey();
    //         if (keyInfo.Key == ConsoleKey.LeftArrow)
    //         {
    //             Console.WriteLine("Move left");
    //             Console.WriteLine(logic.MoveLeft());
    //         }
    //         else if (keyInfo.Key == ConsoleKey.RightArrow)
    //         {
    //             Console.WriteLine("Move right");
    //             Console.WriteLine(logic.MoveRight());
    //         }
    //         else if (keyInfo.Key == ConsoleKey.UpArrow)
    //         {
    //             Console.WriteLine("Move up");
    //             Console.WriteLine(logic.MoveUp());
    //         }
    //         else if (keyInfo.Key == ConsoleKey.DownArrow)
    //         {
    //             Console.WriteLine("Move down");
    //             Console.WriteLine(logic.MoveDown());
    //         }
    //         if (logic.VerifyEndGame()) break;
    //     }
    // }

    public Dictionary<Position, Position> Move(Movement.MovementType type) {
        switch(type) {
            case Movement.MovementType.DOWN:
                return Move(new Position(0, 1));
            case Movement.MovementType.UP:
                return Move(new Position(0, -1));
            case Movement.MovementType.LEFT:
                return Move(new Position(-1, 0));
            case Movement.MovementType.RIGHT:
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

    private bool VerifyEndGame()
    {
        int size = pieces.Count;
        for (int i = 0; i < size; i++)
        {
            if (!pieces_copy[i].position.Equals(targets[i].position)) return false;
        }
        return true;
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
                    pieces.Add(new Piece(board[y, x], new Position(x, y)));
                    pieces_copy.Add(new Piece(board[y, x], new Position(x, y)));
                } 
                else if (board[y, x] == "tp" || board[y, x] == "tr" || board[y, x] == "to")
                {
                    targets.Add(new Piece(board[y, x], new Position(x, y)));
                }
            }
        }
    }
}