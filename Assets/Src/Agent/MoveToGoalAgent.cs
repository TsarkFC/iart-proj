using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.MLAgents;
using Unity.MLAgents.Sensors;

public class MoveToGoalAgent : Agent {
    public override void OnActionReceived(float[] vectorAction)
    {
        Debug.Log(vectorAction[0]);
    }

    public override void CollectObservations(VectorSensor sensor)
    {
        //TODO: receive data 
        //TODO: agent position
        //TODO: target positions

    }
}
