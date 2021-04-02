using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using TMPro;

using algorithmtype;

public class Stats : MonoBehaviour
{
    public TextMeshProUGUI statsTextBox;
    public TextMeshProUGUI currentMovesCount;
    public TextMeshProUGUI minimumPossibleMoves;

    /*
        Minimum number of moves to complete
        current number of moves

        algoritmo usado, nº de nós visitados, tempo demorado, uso máx de memória
    */

    private void UpdateText()
    {
        StatsInfo.changed = false;

        String output = "";

        foreach (var pair in StatsInfo.algoResults)
        {
            output += "<b>" + AlgorithmNames.get(pair.Key) + "</b>\n<size=15>" + pair.Value.timeSpent + "ms, " + pair.Value.nNodesVisited + " nodes, " + pair.Value.nMovesUsed + " moves, memory: " + pair.Value.maxMemoryUsed + "B</size>\n\n";
        }

        statsTextBox.text = output;

        currentMovesCount.text = StatsInfo.currentMovesCount + " Moves";
        minimumPossibleMoves.text = "The minimum possible is " + StatsInfo.minimumPossibleMoves;
    }

    // Start is called before the first frame update
    void Start()
    {
        UpdateText();
    }

    // Update is called once per frame
    void Update()
    {
        if (StatsInfo.changed) UpdateText();
    }
}
