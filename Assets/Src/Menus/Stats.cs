using System.Collections;
using System.Collections.Generic;
using System;
using System.Threading;
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

    public static void ResetAlgoResults()
    {
        Stats.algoResults = new Dictionary<AlgorithmType, StatsResults>();
        changed = true;
    }

    public static void AddAlgoResults(AlgorithmType type, StatsResults results)
    {
        Stats.algoResults.Add(type, results);
        changed = true;
    }

    private static bool changed = false;

    private void UpdateText()
    {
        changed = false;

        String output = "";

        foreach (var pair in algoResults)
        {
            output += AlgorithmNames.get(pair.Key) + "\n" + pair.Value.timeSpent + "ms, " + pair.Value.nNodesVisited + " nodes visited\n\n";
        }

        statsTextBox.text = output;
    }

    // Start is called before the first frame update
    void Start()
    {
        UpdateText();
    }

    // Update is called once per frame
    void Update()
    {
        if (changed) UpdateText();
    }
}
