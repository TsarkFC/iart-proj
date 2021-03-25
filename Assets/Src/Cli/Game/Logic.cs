using System;
using System.Collections.Generic;
using piece;
using position;
using piece_orderer;
using state;

// namespace declaration 
namespace logic
{

    // Class declaration 
    public class Logic
    {
        public State state { get; set; }
        PieceOrderer pieceOrderer = new PieceOrderer();

        public Logic(State state)
        {
            this.state = state;
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
            state.pieces.Sort(pieceOrderer);

            Dictionary<Position, Position> prevNextPosition = new Dictionary<Position, Position>();

            foreach (Piece piece in state.pieces)
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
                if (state.board[temp.y, temp.x] != " " && state.board[temp.y, temp.x][0] != 't')
                    break;

                nextPos += direction;
            }
            if (nextPos.Equals(piece.position)) return null;
            return nextPos;
        }

        private bool InBounds(Position position)
        {
            if (position.x >= state.xDim || position.x < 0) return false;
            if (position.y >= state.yDim || position.y < 0) return false;
            return true;
        }

        private void ApplyMove(Position nextPos, Piece piece)
        {
            state.board[nextPos.y, nextPos.x] = piece.symbol;
            if (!replaceTargets(piece))
                state.board[piece.position.y, piece.position.x] = " ";
            piece.position = nextPos;
        }

        public bool VerifyEndGame()
        {
            int size = state.pieces.Count;
            int correct = 0;

            foreach (Piece target in state.targets)
            {
                foreach(Piece piece in state.pieces) 
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
            foreach (Piece target in state.targets)
                if (target.position.Equals(piece.position))
                {
                    state.board[piece.position.y, piece.position.x] = target.symbol;
                    return true;
                }
            return false;
        }
    }
}