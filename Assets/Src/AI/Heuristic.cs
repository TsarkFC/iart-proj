using node;
using position;
using piece;
using System.Collections.Generic;
using System;
using piece_orderer;
using logic;

namespace heuristic
{

    public class Heuristic
    {
        private static Random rand = new Random();
        private static int AStartCostWeight = 4;
        private static List<Position> directions = new List<Position>() {
            new Position(1, 0),
            new Position(-1, 0),
            new Position(0, 1),
            new Position(0, -1)
        };

        public static bool HasObstacleInStraightLinePath(Node node, int staticCoord, int dynamicCoordMin, int dynamicCoordMax, bool horizontal /* true if in x axis, false if in y */)
        {
            /* dynamicCoordMin and dynamicCoordMax do not belong to the path */
            for (int i = dynamicCoordMin + 1; i < dynamicCoordMax; i++)
            {
                if ((!horizontal && node.state.board[i, staticCoord] != " ") || 
                    (horizontal && node.state.board[staticCoord, i] != " ")) return true;
            }
            return false;
        }

        public static int ObstacleCount(Node node, Piece piece, Piece target)
        {
            int minX = Math.Min(piece.position.x, target.position.x), maxX = Math.Max(piece.position.x, target.position.x);
            int minY = Math.Min(piece.position.y, target.position.y), maxY = Math.Max(piece.position.y, target.position.y);
            int count = 0;
            for (int j = minY; j <= maxY; j++)
            {
                for (int i = minX; i <= maxX; i++)
                {
                    if (node.state.board[j, i] == "o") count++;
                }
            }
            return count;
        }

        public static float PieceTargetDirection(Node node)   // check if piece is already in target or not
        {
            List<Piece> pieces = node.state.pieces;
            List<Piece> targets = node.state.targets;

            float total = 0;
            int alignedPieces = 0;

            foreach (Piece piece in pieces)
            {
                foreach (Piece target in targets)
                {
                    if (piece.ColorEquals(target))   // maybe needs improvement for multiple pieces with same colors
                    {
                        if (piece.position.Equals(target.position))
                        {
                            total -= 5;
                        }
                        else if (piece.position.x == target.position.x || piece.position.y == target.position.y)
                        {
                            int staticCoord = piece.position.x == target.position.x ? piece.position.x : piece.position.y;
                            int min = piece.position.x == target.position.x ? Math.Min(piece.position.y, target.position.y) : Math.Min(piece.position.x, target.position.x);
                            int max = piece.position.x == target.position.x ? Math.Max(piece.position.y, target.position.y) : Math.Max(piece.position.x, target.position.x);

                            bool hasObstacle = HasObstacleInStraightLinePath(node, staticCoord, min, max, piece.position.y == target.position.y);
                            if (hasObstacle) total += 3;
                            else alignedPieces++;
                        }
                        else
                        {
                            float Yslope = (float)(target.position.y - piece.position.y) / (float)(target.position.x - piece.position.x);  // is infinity if vertical
                            float Xslope = (float)(target.position.x - piece.position.x) / (float)(target.position.y - piece.position.y);  // is infinity if horizontal

                            total += 3*Math.Min(Yslope, Xslope);
                        }
                        break;
                    }
                }
            }

            total -= alignedPieces;

            return total;
        }

        public static float GreedyDirection(Node node) => PieceTargetDirection(node);

        public static float AStarDirection(Node node) => AStartCostWeight*node.cost + PieceTargetDirection(node);

        public static int GetMovementsToTarget(Node node, Piece piece, Piece target)
        {
            return 1;
        }

        public static int PieceTargetMovements(Node node)
        {
            int maxMovementNum = 0;
            foreach (Piece piece in node.state.pieces)
            {
                foreach (Piece target in node.state.targets)
                {
                    if (piece.ColorEquals(target))   // maybe needs improvement for multiple pieces with same colors
                    {
                        int n = GetMovementsToTarget(node, piece, target);
                        if (n > maxMovementNum) maxMovementNum = n;
                        break;
                    }
                }
            }
            return maxMovementNum;                    
        }


        public static int DirectionAlignment(Node node) 
        {
            int total = 0;
            if (AreDirectionallySorted(node, new Position(1, 0))) total -= 5;
            if (AreDirectionallySorted(node, new Position(0, 1))) total -= 5;
            return total;
        }
        
        // new Position(1, 0): horizontal
        // new Position(0, 1): vertical
        private static bool AreDirectionallySorted(Node node, Position direction) 
        {
            PieceOrderer pieceOrderer = new PieceOrderer(direction);
            List<Piece> pieces = new List<Piece>(node.state.pieces);
            List<Piece> targets = new List<Piece>(node.state.targets);
            pieces.Sort(pieceOrderer);
            targets.Sort(pieceOrderer);

            for (int i = 0; i < pieces.Count; i++) {
                if (!pieces[i].ColorEquals(targets[i]))
                    return false;
            }
            return true;
        }

        public static float GreedyAlignment(Node node) => DirectionAlignment(node);

        public static float AStarAlignment(Node node) => AStartCostWeight*node.cost + DirectionAlignment(node);

        public static float ManhattanDistance(Node node)
        {
            List<Piece> pieces = node.state.pieces;
            List<Piece> targets = node.state.targets;

            float total = 0;

            foreach (Piece piece in pieces)
            {
                foreach (Piece target in targets)
                {
                    if (piece.ColorEquals(target))   // maybe needs improvement for multiple pieces with same colors
                    {
                        Position diff = target.position - piece.position;
                        float mDist = Math.Abs(diff.x) + Math.Abs(diff.y);
                        total += mDist;
                        break;
                    }
                }
            }

            return total;
        }

        public static float GreedyManhattanDistance(Node node) => ManhattanDistance(node);

        public static float AStarManhattanDistance(Node node) => AStartCostWeight*node.cost + ManhattanDistance(node);

        public static float GreedyRandom(Node node) => (float) rand.NextDouble() * 50;
        // returns 0 if there a
        private static int BlockAlignedMovements(Node node) 
        {
            int allowedMoves = 0;
            foreach (Piece piece in node.state.pieces)
            {
                foreach (Piece target in node.state.targets)
                {
                    if (piece.ColorEquals(target))
                    {
                        if (piece.position.x != target.position.x && piece.position.y != target.position.y) 
                        {
                            allowedMoves += 1;
                            continue;
                        }
                        foreach (Position direction in directions)
                            if (Logic.GetNextPosition(node.state, direction, piece) != null)
                                allowedMoves++;
                    }
                }
            }
            return allowedMoves;
        }

        public static float GreedyBlock(Node node) => BlockAlignedMovements(node);

        public static float AStarBlock(Node node) => AStartCostWeight*node.cost + BlockAlignedMovements(node);
    }
}