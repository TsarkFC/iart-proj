using System;
using System.Collections.Generic;
using piece;
using position;

namespace piece_orderer
{
    class PieceOrderer : IComparer<Piece>
    {
        public Position direction { get; set; }
        public PieceOrderer() {}

        // 0 -> equal; -1 -> p2 greater; 1 -> p1 greater 
        public int Compare(Piece p1, Piece p2)
        {
            if (p1.position.scalarProduct(direction) > p2.position.scalarProduct(direction))
                return -1;
            else if (p1.position.scalarProduct(direction) < p2.position.scalarProduct(direction))
                return 1;
            return 0;
        }
    }
}