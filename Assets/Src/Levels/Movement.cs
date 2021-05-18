using position;
using System;

public class Movement
{
    public MovementType type;
    public float delta, scalingFactor;
    public int target;
    public Position position;

    public enum MovementType
    {
        NONE,
        RIGHT,
        LEFT,
        UP,
        DOWN
    }

    public Movement(Position position, float scalingFactor, MovementType type = MovementType.NONE, float delta = 0, int target = 90)
    {
        this.position = position;
        this.type = type;
        this.delta = delta;
        this.target = (int)(target * scalingFactor);
        this.scalingFactor = scalingFactor;
    }

    public void StartMovement(Position nextPosition, MovementType type)
    {
        Position diff = nextPosition - this.position;
        this.position = nextPosition;
        this.type = type;
        this.delta = 0;
        this.target = (int)(Math.Abs(diff.ScalarProduct(new Position(1, 1))) * 90 * scalingFactor);
    }

    public void StopMovement()
    {
        this.type = MovementType.NONE;
        this.delta = 0;
        this.target = (int)(90 * scalingFactor);
    }

    public bool Update(float amount)
    {
        this.delta += amount;
        
        return this.delta < this.target; // returns true if the movement continues
    }
}