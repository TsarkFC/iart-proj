using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using TMPro;

using algorithmtype;
using statsresults;

public class Stats : MonoBehaviour
{
    public TextMeshProUGUI statsTextBox;

    public static Dictionary<AlgorithmType, StatsResults> algoResults = new Dictionary<AlgorithmType, StatsResults>();

    /*
        Minimum number of moves to complete
        current number of moves

        algoritmo usado, nº de nós visitados, tempo demorado, uso máx de memória
    */

    public static void resetAlgoResults()
    {
        Stats.algoResults = new Dictionary<AlgorithmType, StatsResults>();
    }

    public static void addAlgoResults(AlgorithmType type, StatsResults results)
    {
        Stats.algoResults.Add(type, results);
    }

    // Start is called before the first frame update
    void Start()
    {
        String output = "";

        foreach (var pair in algoResults)
        {
            output += AlgorithmNames.get(pair.Key) + ": " + pair.Value.timeSpent + "ms\n";
        }

        statsTextBox.text = output;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
