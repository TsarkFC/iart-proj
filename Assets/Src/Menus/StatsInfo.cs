using System.Collections;
using System.Collections.Generic;
using System;

using algorithmtype;
using statsresults;

public class StatsInfo
{
    public static Dictionary<AlgorithmType, StatsResults> algoResults = new Dictionary<AlgorithmType, StatsResults>();

    /*
        Minimum number of moves to complete
        current number of moves

        algoritmo usado, nº de nós visitados, tempo demorado, uso máx de memória
    */

    public static void ResetAlgoResults()
    {
        StatsInfo.algoResults = new Dictionary<AlgorithmType, StatsResults>();
        changed = true;
    }

    public static void AddAlgoResults(AlgorithmType type, StatsResults results)
    {
        StatsInfo.algoResults.Add(type, results);
        changed = true;
    }

    public static bool changed = false;

    public static void RemoveWarning() => Console.Write(changed);
}