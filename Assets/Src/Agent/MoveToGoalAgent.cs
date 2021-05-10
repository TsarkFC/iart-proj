using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.MLAgents;
using Unity.MLAgents.Sensors;

public class MoveToGoalAgent : Agent {

    /**
     * ACTIONS
     * 0 - Do nothing
     * 1 - Move right
     * 2 - Move left 
     * 3 - Move up
     * 4 - Move down
     */

    public override void OnEpisodeBegin()
    {
        // reset game state
        transform.position = new Vector3(57, 230, 0);
    }

    public override void OnActionReceived(float[] vectorAction)
    {
        Debug.Log(vectorAction[0]);
        
        // move piece accordingly to game logic
        int action = (int) vectorAction[0];
        switch(action)
        {
            case 1:
                transform.position += new Vector3(25, 0, 0);
                break;
            case 2:
                transform.position += new Vector3(-25, 0, 0);
                break;
            case 3:
                transform.position += new Vector3(0, 25, 0);
                break;
            case 4:
                transform.position += new Vector3(0, -25, 0);
                break;
        }
        Debug.Log(transform.position);
    }

    [SerializeField] private Transform targetTransform;
    public override void CollectObservations(VectorSensor sensor)
    {
        sensor.AddObservation(transform.position);
        sensor.AddObservation(targetTransform.position);

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

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.TryGetComponent<Goal>(out Goal goal))
        {
            Debug.Log("COLLISION");
            SetReward(1f);
            EndEpisode();
        }
        else if (other.TryGetComponent<Wall>(out Wall wall))
        {
            SetReward(-1f);
            EndEpisode();
        }
    }
}
