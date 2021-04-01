using System.Collections;
using System.Collections.Generic;
using System;

using algorithmtype;
using statsresults;

public class StatsInfo
{
    public static Dictionary<AlgorithmType, StatsResults> algoResults = new Dictionary<AlgorithmType, StatsResults>();
    public static int currentMovesCount = -1, minimumPossibleMoves = -1;

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

    public static void SetCurrentMovesCount(int currentMovesCount)
    {
        StatsInfo.currentMovesCount = currentMovesCount;
        changed = true;
    }

    public static void SetMinimumPossibleMoves(int minimumPossibleMoves)
    {
        StatsInfo.minimumPossibleMoves = minimumPossibleMoves;
        changed = true;
    }

    public static bool changed = false;

    public static void RemoveWarning() => Console.Write(changed);

    public static void DisplayCli() 
    {
        foreach(KeyValuePair<AlgorithmType, StatsResults> result in algoResults)
        {
            Console.WriteLine(result.Key);
            result.Value.DisplayCli();
        }
    }
}