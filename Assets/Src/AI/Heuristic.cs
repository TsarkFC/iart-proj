using node;
using position;
using piece;
using System.Collections.Generic;
using System;

namespace heuristic
{

    public class Heuristic
    {
        private static Random rand = new Random();

        public static float PieceTargetDirection(Node node)
        {
            List<Piece> pieces = node.state.pieces;
            List<Piece> targets = node.state.targets;

            float total = 0;
            int piecesX = 0, piecesY = 0;

            foreach (Piece piece in pieces)
            {
                foreach (Piece target in targets)
                {
                    if (piece.ColorEquals(target))   // maybe needs improvement for multiple pieces with same colors
                    {
                        // refactor ifs
                        if (piece.position.x == target.position.x)
                        {
                            int minY = Math.Min(piece.position.y, target.position.y);
                            int maxY = Math.Max(piece.position.y, target.position.y);
                            bool obstacle = false;
                            for (int i = minY + 1; i < maxY; i++)
                            {
                                if (node.state.board[i, piece.position.x] != " ")
                                {
                                    total += 3;
                                    obstacle = true;
                                    break;
                                }
                            }
                            if (!obstacle) piecesX++;
                        }
                        else if (piece.position.y == target.position.y)
                        {
                            int minX = Math.Min(piece.position.x, target.position.x);
                            int maxX = Math.Max(piece.position.x, target.position.x);
                            bool obstacle = false;
                            for (int i = minX + 1; i < maxX; i++)
                            {
                                if (node.state.board[piece.position.y, i] != " ")
                                {
                                    total += 3;
                                    obstacle = true;
                                    break;
                                }
                            }
                            if (!obstacle) piecesY++;
                        }
                        else
                        {
                            float Yslope = (float)(target.position.y - piece.position.y) / (float)(target.position.x - piece.position.x);  // is infinity if vertical
                            float Xslope = (float)(target.position.x - piece.position.x) / (float)(target.position.y - piece.position.y);  // is infinity if horizontal

                            total += 2*Math.Min(Yslope, Xslope);
                        }
                        break;
                    }
                }
            }

            if (piecesY > 1) total--;
            if (piecesX > 1) total--;

            return total;
        }

        public static float GreedyDirection(Node node) => PieceTargetDirection(node);

        public static float AStarDirection(Node node) => 10*node.cost + PieceTargetDirection(node);

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

        public static float AStarManhattanDistance(Node node) => 10*node.cost + ManhattanDistance(node);

        public static float GreedyRandom(Node node) => (float) rand.NextDouble() * 50;

    }
}