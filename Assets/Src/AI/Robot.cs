using System;
using System.Collections.Generic;
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

// namespace declaration 
namespace robot
{
    // Class declaration 
    public class Robot
    {
        private Logic logic;
        private List<Node> path = null;
        //public int depthLimit { get; set; }
        int depthLimit = 20;
        private Dictionary<AlgorithmType, Func<List<Node>>> algorithms = new Dictionary<AlgorithmType, Func<List<Node>>>();

        public Robot(Logic logic)
        {
            this.logic = logic;
            algorithms.Add(AlgorithmType.BFS, BFS);
            algorithms.Add(AlgorithmType.DFS, DFS);
            algorithms.Add(AlgorithmType.IT_DEEPENING, ItDeepening);
            algorithms.Add(AlgorithmType.GREEDY, BFS);
            algorithms.Add(AlgorithmType.ASTAR, BFS);
            algorithms.Add(AlgorithmType.ALL, BFS);
        }

        public void Run(AlgorithmType algorithm)
        {
            List<Node> path = algorithms[algorithm]();
            PrintSearchPath(path);
        }

        public Movement.MovementType Hint()
        {
            State stateCopy = Cloner.DeepClone(logic.state);
            List<Node> path = BFS();
            logic.state = stateCopy;

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
            Node root = new Node(null, null, Cloner.DeepClone(logic.state), logic, 0);
            List<Node> visited = new List<Node>();
            Queue<Node> queue = new Queue<Node>();
            Node current = null;
            queue.Enqueue(root);

            int count = 0;

            while (queue.Count != 0)
            {
                current = queue.Dequeue();
                count++;
                logic.state = Cloner.DeepClone(current.state);  // ??
                if (logic.VerifyEndGame())
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
            Node root = new Node(null, null, Cloner.DeepClone(logic.state), logic, 0);
            List<Node> visited = new List<Node>();
            return DepthRecursiveCall(root, visited, 0);
        }

        public List<Node> DepthRecursiveCall(Node node, List<Node> visited, int depthCount)
        {
            if (depthCount > depthLimit) return null;
            
            logic.state = Cloner.DeepClone(node.state);  // ??
            if (logic.VerifyEndGame()) 
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
            Node current = null;
            Node root = new Node(null, null, Cloner.DeepClone(logic.state), logic, 0);
            queue.Insert(root, heuristic(root));
            int count = 0;

            while (!queue.IsEmpty())
            {
                current = queue.Pop();
                count++;
                logic.state = Cloner.DeepClone(current.state);  // ??
                if (logic.VerifyEndGame())
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

        private void PrintSearchPath(List<Node> path)
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