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

// namespace declaration 
namespace robot
{
    // Class declaration 
    public class Robot
    {
        private Logic logic;
        private List<Node> path = null;

        public Robot(Logic logic)
        {
            this.logic = logic;
        }

        public void Run()
        {
            List<Node> path = BFS();
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
            return BFS(new Node(null, null, Cloner.DeepClone(logic.state), logic, 0));
        }

        public List<Node> BFS(Node root)
        {
            List<Node> visited = new List<Node>();
            Queue<Node> queue = new Queue<Node>();
            Node current = null;
            queue.Enqueue(root);

            while (queue.Count != 0)
            {
                current = queue.Dequeue();
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

        public List<Node> InformedSearch(PriorityQueue<Node>.PQType pQType, Func<Node, int> heuristic)
        {
            List<Node> visited = new List<Node>();
            PriorityQueue<Node> queue = new PriorityQueue<Node>(pQType);
            Node current = null;
            Node root = new Node(null, null, Cloner.DeepClone(logic.state), logic, 0);
            queue.Insert(root, heuristic(root));

            while (!queue.IsEmpty())
            {
                current = queue.Pop();
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
            foreach (Node node in path)
            {
                node.state.PrintBoard();
            }
        }
    }
}