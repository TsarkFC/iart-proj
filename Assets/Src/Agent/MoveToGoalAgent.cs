using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.MLAgents;
using Unity.MLAgents.Sensors;
using System.Threading.Tasks;

public class MoveToGoalAgent : Agent {

    public Level level;

    Movement.MovementType[] movements = {
        Movement.MovementType.RIGHT,
        Movement.MovementType.UP,
        Movement.MovementType.LEFT,
        Movement.MovementType.DOWN
    };

    public override void OnEpisodeBegin()
    {
        // reset level
    }

    public async override void OnActionReceived(float[] vectorAction)
    {
        Debug.Log(vectorAction[0]);

        Movement.MovementType movementType = Movement.MovementType.NONE;
        
        // move piece accordingly to game logic
        int action = (int) vectorAction[0];

        TaskCompletionSource<int> task = level.HandleMovement(movements[action]);
        int result = await task.Task;

        if (result != 0)
        {
            Debug.Log("Couldn't move!");
        }
        else
        {
            Debug.Log("Moved to " + movementType);
        }

        // SetReward(-1f);
        // EndEpisode();
    }

    // [SerializeField] private Transform targetTransform;
    public override void CollectObservations(VectorSensor sensor)
    {
        sensor.AddObservation(transform.position);
        //sensor.AddObservation(targetTransform.position);

        //TODO: receive data 
        //TODO: agent position
        //TODO: target positions
    }

    /**
     * Used to test / simulate the agent actions
     */
    public override void Heuristic(float[] actionsOut)
    {
        float x = Input.GetAxis("Horizontal");
        float y = Input.GetAxis("Vertical");

        transform.position += new Vector3(x*20, y*20, 0);
    }
}
