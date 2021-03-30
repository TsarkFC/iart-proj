using System;
using System.Collections.Generic;
using logic;
using state;
using position;
using cloner;
using node;
using piece;
using direction;

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

        public Direction Hint()
        {
            State stateCopy = Cloner.DeepClone(logic.state);
            List<Node> path = BFS();
            logic.state = stateCopy;

            return CalculateDirection(path[0], path[1]);
        }

        private Direction CalculateDirection(Node first, Node second)
        {
            List<Node> children = first.Expand(true);

            for (int i = 0; i < children.Count; i++)
            {
                if (children[i] == null) continue;
                if (children[i].Equals(second))
                    return Node.directions[i];
            }
            return null;
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
            return BFS(new Node(null, null, Cloner.DeepClone(logic.state), logic));
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

                List<Node> children = current.Expand(false);
                foreach (Node node in children)
                    if (!visited.Contains(node))
                    {
                        queue.Enqueue(node);
                        visited.Add(node);
                    }
            }
            return GetNodePath(current);
        }

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