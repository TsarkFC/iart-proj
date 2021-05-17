using Unity.MLAgents;
using Unity.MLAgents.Sensors;
using UnityEngine;

public class MoveToGoalAgent : Agent {

    public Level level;
    readonly Movement.MovementType[] movements = {
        Movement.MovementType.RIGHT,
        Movement.MovementType.LEFT,
        Movement.MovementType.UP,
        Movement.MovementType.DOWN
    };

    public override void Initialize()
    {
        GameMode.mode = GameMode.Mode.AGENT;  // important for when the game is being ran directly from the ML level
    }

    public override void OnEpisodeBegin()
    {
        level.BuildBoard();
    }

    private void FixedUpdate()
    {
        if (!level.moving && level.gameOver < 0) RequestDecision();
    }

    public override void OnActionReceived(float[] vectorAction)
    {
        // move piece accordingly to game logic
        int action = (int) vectorAction[0];

        if (level.moving || level.gameOver >= 0) Debug.LogError("This isn't supposed to happen!");

        Movement.MovementType movementType = movements[action];
        int result = level.HandleMovement(movementType);

        if (result == 0 && action != 0) // made a move
        {
            //Debug.Log("Moved to " + movementType);
            SetReward(-1f);
        }
        else if (result == -1)
        {
            EndEpisode();
            Debug.Log("Episode Ended!");
            return;
        }
        else if (result == 1)  // if moved to invalid position
        {
            Debug.LogWarning("Tried to move to a place where it is not possible to move.");
            //SetReward(-1f); // ?
        }
    }

    public override void CollectObservations(VectorSensor sensor)
    {
        //Add board to observations
        for (int y = 0; y < level.state.yDim; y++)
        {
            for (int x = 0; x < level.state.xDim; x++)
            {
                sensor.AddObservation(new Vector3(y, x, (int) Level.stringRepToPieceType(level.state.board[y, x])));
            }
        }
    }

    /**
     * Used to test / simulate the agent actions
     */
    public override void Heuristic(float[] actionsOut)
    {
        if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            actionsOut[0] = 0;
        }
        else if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            actionsOut[0] = 1;
        }
        else if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            actionsOut[0] = 2;
        }
        else if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            actionsOut[0] = 3;
        }
    }
}
