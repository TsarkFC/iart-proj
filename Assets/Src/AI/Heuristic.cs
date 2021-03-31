using node;
using position;
using piece;
using System.Collections.Generic;
using System;

namespace heuristic
{
    public class Heuristic
    {
        public static int ManhattanDistance(Node node)
        {
            List<Piece> pieces = node.state.pieces;
            List<Piece> targets = node.state.targets;

            int total = 0;

            foreach (Piece piece in pieces)
            {
                foreach (Piece target in targets)
                {
                    if (piece.ColorEquals(target))   // maybe needs improvement for multiple pieces with same colors
                    {
                        Position diff = target.position - piece.position;
                        int mDist = Math.Abs(diff.x) + Math.Abs(diff.y);
                        total += mDist;
                        break;
                    }
                }
            }

            return total;
        }

        public static int GreedyManhattanDistance(Node node) => ManhattanDistance(node);

        public static int AStarManhattanDistance(Node node) => node.cost + ManhattanDistance(node);
    }
}