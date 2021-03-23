public class Movement
{
    public MovementType type;
    public float delta;
    public int target;


    public enum MovementType
    {
        NONE,
        RIGHT,
        LEFT,
        UP,
        DOWN
    }

    public Movement(MovementType type = MovementType.NONE, float delta = 0, int target = 90)
    {
        this.type = type;
        this.delta = delta;
        this.target = target;
    }

    public void StartMovement(MovementType type, int target)
    {
        this.type = type;
        this.delta = 0;
        this.target = target;
    }

    public void StopMovement()
    {
        this.type = MovementType.NONE;
        this.delta = 0;
        this.target = 90;
    }

    public void Increment(float amount)
    {
        this.delta += amount;
    }
}