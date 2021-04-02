using System;
using System.Collections.Generic;
using System.Diagnostics;
using logic;
using state;
using position;
using cloner;
using node;
using piece;
using direction;
using datastructures;
using heuristic;
using algorithmtype;
using statsresults;

// namespace declaration 
namespace robot
{
    // Class declaration 
    public class Robot
    {
        private State state;
        private List<Node> path = null;
        //public int depthLimit { get; set; }
        int depthLimit = 20;
        private Dictionary<AlgorithmType, Func<Tuple<List<Node>, int>>> algorithms = new Dictionary<AlgorithmType, Func<Tuple<List<Node>, int>>>();

        public Robot(State state)
        {
            this.state = state;
            algorithms.Add(AlgorithmType.BFS, BFS);
            algorithms.Add(AlgorithmType.DFS, DFS);
            algorithms.Add(AlgorithmType.IT_DEEPENING, ItDeepening);
            algorithms.Add(AlgorithmType.GREEDY_MANHATTAN, GreedyManhattan);
            algorithms.Add(AlgorithmType.GREEDY_DIRECTION, GreedyDirection);
            algorithms.Add(AlgorithmType.GREEDY_RANDOM, GreedyRandom);
            algorithms.Add(AlgorithmType.ASTAR_MANHATTAN, AStarManhattan);
            algorithms.Add(AlgorithmType.ASTAR_DIRECTION, AStarDirection);
        }

        public List<Node> RunWithoutMeasurements(AlgorithmType algorithm)
        {
            if (algorithm == AlgorithmType.ALL) throw new System.Exception("There is no need to run all the algorithms without taking measurements!");
            return algorithms[algorithm]().Item1;
        }

        public List<Node> RunWithMeasurements(AlgorithmType algorithm)
        {
            StatsInfo.ResetAlgoResults();
            if (algorithm == AlgorithmType.ALL)
            {
                foreach (var pair in this.algorithms)
                {
                    var result = TakeMeasurements(pair.Value);
                    StatsInfo.AddAlgoResults(pair.Key, result.Item1);
                }

                return algorithms[AlgorithmType.ASTAR_DIRECTION]().Item1;
            }
            else
            {
                var result = TakeMeasurements(algorithms[algorithm]);
                StatsInfo.AddAlgoResults(algorithm, result.Item1);
                return result.Item2;
            }
        }

        public Tuple<StatsResults, List<Node>> TakeMeasurements(Func<Tuple<List<Node>, int>> func)
        {
            Stopwatch sw = new Stopwatch();
            int millisecondsSum = 0, nNodesVisitedSum = 0;

            List<Node> pathRes = null;

            for (int i = 0; i < 3; i++)
            {
                sw.Start();
                Tuple<List<Node>, int> path = func();
                sw.Stop();

                millisecondsSum += sw.Elapsed.Milliseconds;
                nNodesVisitedSum += path.Item2;
                pathRes = path.Item1;
                sw.Reset();
            }

            return Tuple.Create(new StatsResults(millisecondsSum/3, nNodesVisitedSum/3, 0, pathRes.Count - 1), pathRes);
        }

        public Movement.MovementType Hint()
        {
            List<Node> path = RunWithoutMeasurements(AlgorithmType.ASTAR_DIRECTION);

            if (path.Count < 2) return Movement.MovementType.NONE;
            return path[1].movement;
        }

        public void InitStepByStep(List<Node> path)
        {
            this.path = path;
        }

        public Movement.MovementType GetNextStep()
        {
            if (this.path == null) return Movement.MovementType.NONE;
            Node ret = this.path[0];
            this.path.Remove(ret);

            if (this.path.Count == 0) this.path = null;

            return ret.movement;
        }

        public Tuple<List<Node>, int> BFS()
        {
            Node root = new Node(null, null, this.state, 0);
            List<Node> visited = new List<Node>();
            Queue<Node> queue = new Queue<Node>();
            Node current = null;
            queue.Enqueue(root);

            int count = 0;

            while (queue.Count != 0)
            {
                current = queue.Dequeue();
                count++;

                if (Logic.VerifyEndGame(current.state))
                {
                    return Tuple.Create(GetNodePath(current), count);
                }

                List<Node> children = current.Expand();
                foreach (Node node in children)
                    if (!visited.Contains(node))
                    {
                        queue.Enqueue(node);
                        visited.Add(node);
                    }
            }
            return null;
        }

        public Tuple<List<Node>, int> DFS()
        {
            Node root = new Node(null, null, this.state, 0);
            List<Node> visited = new List<Node>();
            return DepthRecursiveCall(root, visited, 0);
        }

        public Tuple<List<Node>, int> DepthRecursiveCall(Node node, List<Node> visited, int depthCount)
        {
            int count = 1;
            if (Logic.VerifyEndGame(node.state)) 
                return Tuple.Create(GetNodePath(node), count);
            
            depthCount++;

            if (!visited.Contains(node))
            {
                visited.Add(node);
                if (depthCount <= depthLimit)
                {
                    List<Node> children = node.Expand();

                    foreach(Node child in children) 
                    {
                        Tuple<List<Node>, int> result = DepthRecursiveCall(child, visited, depthCount);
                        if (result.Item1 != null) return Tuple.Create(result.Item1, result.Item2 + count);
                        else
                        {
                            count += result.Item2;
                        }
                    }
                }
            }
            return new Tuple<List<Node>, int>(null, count);
        }

        public Tuple<List<Node>, int> ItDeepening()
        {
            depthLimit = 1;
            List<Node> result = null;
            int nodeCount = 0;

            while (result == null)
            {
                Tuple<List<Node>, int> res = DFS();
                result = res.Item1;
                nodeCount += res.Item2;
                depthLimit++;
            }
            return Tuple.Create(result, nodeCount);
        }

        public Tuple<List<Node>, int> InformedSearch(PriorityQueue<Node>.PQType pQType, Func<Node, float> heuristic)
        {
            List<Node> visited = new List<Node>();
            PriorityQueue<Node> queue = new PriorityQueue<Node>(pQType);
            Node current = null, root = new Node(null, null, this.state, 0);
            queue.Insert(root, heuristic(root));
            int count = 0;

            while (!queue.IsEmpty())
            {
                current = queue.Pop();
                count++;
                
                if (Logic.VerifyEndGame(current.state))
                {
                    return Tuple.Create(GetNodePath(current), count);
                }

                List<Node> children = current.Expand();
                foreach (Node node in children)
                    if (!visited.Contains(node))
                    {
                        queue.Insert(node, heuristic(node));
                        visited.Add(node);
                    }
            }
            return null;
        }

        public Tuple<List<Node>, int> GreedyManhattan() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.GreedyManhattanDistance);

        public Tuple<List<Node>, int> AStarManhattan() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.AStarManhattanDistance);

        public Tuple<List<Node>, int> GreedyDirection() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.GreedyDirection);

        public Tuple<List<Node>, int> AStarDirection() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.AStarDirection);

        public Tuple<List<Node>, int> GreedyRandom() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.GreedyRandom);

        private List<Node> GetNodePath(Node node)
        {
            List<Node> path = new List<Node>();
            Node current = node;
            path.Add(current);

            while (current.parent != null)
            {
                current = current.parent;
                path.Add(current);
            }

            path.Reverse();
            return path;
        }

        public static void PrintSearchPath(List<Node> path)
        {
            if (path == null) {
                Console.WriteLine("No path found");
                return;
            }
            foreach (Node node in path)
            {
                node.state.PrintBoard();
            }
        }
    }
}