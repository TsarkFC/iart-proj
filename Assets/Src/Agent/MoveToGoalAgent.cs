using System.Threading.Tasks;
using Unity.MLAgents;
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

    public async override void OnActionReceived(float[] vectorAction)
    {
        // move piece accordingly to game logic
        int action = (int)vectorAction[0];
        Debug.Log("GOT ACTION");

        Movement.MovementType movementType = movements[action];
        TaskCompletionSource<int> task = level.HandleMovement(movementType);
        int result = await task.Task;

        if (result != 0)
        {
            Debug.Log("Couldn't move!");
        }
        else
        {
            Debug.Log("Moved to " + movementType);
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
    /*public override void Heuristic(float[] actionsOut)
    {
        float x = Input.GetAxis("Horizontal");
        float y = Input.GetAxis("Vertical");

        transform.position += new Vector3(x * 20, y * 20, 0);
    }*/
}
