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
using UnityEngine;

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
        private Dictionary<AlgorithmType, Func<List<Node>>> algorithms = new Dictionary<AlgorithmType, Func<List<Node>>>();

        public Robot(State state)
        {
            this.state = state;
            algorithms.Add(AlgorithmType.BFS, BFS);
            algorithms.Add(AlgorithmType.DFS, DFS);
            algorithms.Add(AlgorithmType.IT_DEEPENING, ItDeepening);
            algorithms.Add(AlgorithmType.GREEDY_MANHATTAN, GreedyManhattan);
            algorithms.Add(AlgorithmType.GREEDY_DIRECTION, GreedyDirection);
            algorithms.Add(AlgorithmType.ASTAR_MANHATTAN, AStarManhattan);
            algorithms.Add(AlgorithmType.ASTAR_DIRECTION, AStarDirection);
        }

        public List<Node> RunWithoutMeasurements(AlgorithmType algorithm)
        {
            if (algorithm == AlgorithmType.ALL) throw new System.Exception("There is no need to run all the algorithms without taking measurements!");
            return algorithms[algorithm]();
        }

        public List<Node> RunWithMeasurements(AlgorithmType algorithm)
        {
            Stats.resetAlgoResults();
            if (algorithm == AlgorithmType.ALL)
            {
                foreach (var pair in this.algorithms)
                {
                    var result = TakeMeasurements(pair.Value);
                    Stats.addAlgoResults(pair.Key, result.Item1);
                }

                return algorithms[AlgorithmType.ASTAR_DIRECTION]();
            }
            else
            {
                var result = TakeMeasurements(algorithms[algorithm]);
                Stats.addAlgoResults(algorithm, result.Item1);
                return result.Item2;
            }
        }

        public Tuple<StatsResults, List<Node>> TakeMeasurements(Func<List<Node>> func)
        {
            Stopwatch sw = new Stopwatch();
            int millisecondsSum = 0;

            for (int i = 0; i < 3; i++)
            {
                sw.Start();
                List<Node> path = func();
                sw.Stop();

                millisecondsSum += sw.Elapsed.Milliseconds;
                sw.Reset();
            }

            return Tuple.Create(new StatsResults(millisecondsSum/3, 0, 0), path);
        }

        public Movement.MovementType Hint()
        {
            List<Node> path = BFS();

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

        public List<Node> BFS()
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
                    return GetNodePath(current);
                }

                List<Node> children = current.Expand();
                foreach (Node node in children)
                    if (!visited.Contains(node))
                    {
                        queue.Enqueue(node);
                        visited.Add(node);
                    }
            }
            return GetNodePath(current);
        }

        public List<Node> DFS()
        {
            Node root = new Node(null, null, this.state, 0);
            List<Node> visited = new List<Node>();
            return DepthRecursiveCall(root, visited, 0);
        }

        public List<Node> DepthRecursiveCall(Node node, List<Node> visited, int depthCount)
        {
            if (depthCount > depthLimit) return null;
            
            if (Logic.VerifyEndGame(node.state)) 
                return GetNodePath(node);
            
            depthCount++;

            if (!visited.Contains(node))
            {
                visited.Add(node);
                List<Node> children = node.Expand();
                foreach(Node child in children) {
                    List<Node> result = DepthRecursiveCall(child, visited, depthCount);
                    if (result != null) return result;
                }
            }
            return null;
        }

        public List<Node> ItDeepening()
        {
            depthLimit = 1;
            List<Node> result = null;

            while (result == null)
            {
                Console.WriteLine("Iteration: " + depthLimit.ToString());
                result = DFS();
                depthLimit++;
            }
            return result;
        }

        public List<Node> InformedSearch(PriorityQueue<Node>.PQType pQType, Func<Node, float> heuristic)
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
                    return GetNodePath(current);
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

        public List<Node> GreedyManhattan() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.GreedyManhattanDistance);

        public List<Node> AStarManhattan() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.AStarManhattanDistance);

        public List<Node> GreedyDirection() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.GreedyDirection);

        public List<Node> AStarDirection() => InformedSearch(PriorityQueue<Node>.PQType.MIN, Heuristic.AStarDirection);


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