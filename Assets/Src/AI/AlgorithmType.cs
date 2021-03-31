using System;
using System.Collections.Generic;

namespace algorithmtype {
    public enum AlgorithmType 
    {
        BFS,
        DFS,
        IT_DEEPENING,
        GREEDY_MANHATTAN,
        GREEDY_DIRECTION,
        ASTAR_MANHATTAN,
        ASTAR_DIRECTION,
        ALL
    }

    public class AlgorithmNames
    {
        private static Dictionary<AlgorithmType, String> names = new Dictionary<AlgorithmType, String>();

        static AlgorithmNames()
        {
            names.Add(AlgorithmType.BFS, "Breadth-first search (uniform cost)");
            names.Add(AlgorithmType.DFS, "Depth-first search");
            names.Add(AlgorithmType.IT_DEEPENING, "Iterative Deepening");
            names.Add(AlgorithmType.GREEDY_MANHATTAN, "Greedy with manhattan heuristic");
            names.Add(AlgorithmType.GREEDY_DIRECTION, "Greedy with direction heuristic");
            names.Add(AlgorithmType.ASTAR_MANHATTAN, "A* with manhattan heuristic");
            names.Add(AlgorithmType.ASTAR_DIRECTION, "A* with direction heuristic");
        }

        public static String get(AlgorithmType type)
        {
            return names[type];
        }

    }
}