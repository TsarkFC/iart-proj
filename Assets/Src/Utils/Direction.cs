using position;

namespace direction
{
    public class Direction
    {
        public Position direction { get; }
        public Movement.MovementType movement { get; }

        public Direction(Position direction, Movement.MovementType movement)
        {
            this.direction = direction;
            this.movement = movement;
        }
    }
}