using System;
using position;

namespace piece
{
    class Piece
    {
        public string symbol { get; set; }
        public Position position { get; set; }
        public Piece(string sym, Position pos)
        {
            symbol = sym;
            position = pos;
        }
    }
}