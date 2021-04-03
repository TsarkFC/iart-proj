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
        ALL,
        GREEDY_RANDOM,
        GREEDY_ALIGNMENT,
        ASTAR_ALIGNMENT,
        GREEDY_BLOCK,
        ASTAR_BLOCK
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
            names.Add(AlgorithmType.GREEDY_ALIGNMENT, "Greedy with alignment heuristic");
            names.Add(AlgorithmType.GREEDY_BLOCK, "Greedy with block heuristic");
            names.Add(AlgorithmType.GREEDY_RANDOM, "Greedy with random heuristic");
            names.Add(AlgorithmType.ASTAR_MANHATTAN, "A* with manhattan heuristic");
            names.Add(AlgorithmType.ASTAR_DIRECTION, "A* with direction heuristic");
            names.Add(AlgorithmType.ASTAR_ALIGNMENT, "A* with alignment heuristic");
            names.Add(AlgorithmType.ASTAR_BLOCK, "A* with block heuristic");
        }

        public static String get(AlgorithmType type)
        {
            return names[type];
        }

    }
}