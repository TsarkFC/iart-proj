using System;

namespace position
{
    class Position
    {
        public int x { get; set; }
        public int y { get; set;}

        public Position(int pos_x, int pos_y)
        {
            x = pos_x;
            y = pos_y;
        }

        public static Position operator +(Position a, Position b)
            => new Position(a.x + b.x, a.y + b.y);
        public static Position operator -(Position a, Position b)
            => new Position(a.x - b.x, a.y - b.y);

        public override bool Equals(Object obj) {
            if (!(obj is Position)) return false;
            Position pos = (Position)obj;
            return pos.x == x && pos.y == y;
        }

        public override int GetHashCode() => x*y;

        public int scalarProduct(Position p) => x*p.x + y*p.y;
    }
}