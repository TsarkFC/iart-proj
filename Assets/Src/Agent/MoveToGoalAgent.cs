﻿using Unity.MLAgents;
using Unity.MLAgents.Sensors;
using UnityEngine;

public class MoveToGoalAgent : Agent {

    public Level level;

    Movement.MovementType[] movements = {
        Movement.MovementType.RIGHT,
        Movement.MovementType.LEFT,
        Movement.MovementType.UP,
        Movement.MovementType.DOWN
    };

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
            SetReward(-3f);
        }
        else if (result == -1)
        {
            SetReward(100f);
            EndEpisode();
            Debug.Log("Episode Ended!");
            return;
        }
        else if (result == 1)  // if moved to invalid position
        {
            Debug.LogWarning("Tried to move to a place where it is not possible to move.");
            SetReward(-1f);
        }

        //TODO: analyse state and apply reward function
        // SetReward(-1f);
        // EndEpisode();
    }

    public override void CollectObservations(VectorSensor sensor)
    {
        //Add board to observations
        for (int y = 0; y < level.state.yDim; y++)
        {
            for (int x = 0; x < level.state.xDim; x++)
            {
                sensor.AddObservation(new Vector3(y, x, (int) level.state.originalBoard[y, x]));
            }
        }
    }

    /**
     * Used to test / simulate the agent actions
     */
    public override void Heuristic(float[] actionsOut)
    {
        return;
        Debug.Log("INSIDE HEURISTIC");
        float x = Input.GetAxis("Horizontal");
        float y = Input.GetAxis("Vertical");

        //transform.position += new Vector3(x * 20, y * 20, 0);
    }
}
