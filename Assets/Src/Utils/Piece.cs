using System;
using position;

namespace piece
{
    [Serializable]
    public class Piece
    {
        public string symbol { get; set; }
        public Position position { get; set; }
        public Piece(string sym, Position pos)
        {
            symbol = sym;
            position = pos;
        }

        public override bool Equals(Object obj) {
            if (!(obj is Piece)) return false;
            Piece piece = (Piece)obj;
            return piece.symbol == symbol && piece.position.Equals(position);
        }

        public override int GetHashCode() => 0;
    }
}