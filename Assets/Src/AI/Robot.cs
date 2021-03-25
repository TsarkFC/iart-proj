using System;
using System.Collections.Generic;
using logic;
using state;
using position;
using cloner;
using node;

// namespace declaration 
namespace robot
{
    // Class declaration 
    public class Robot
    {
        private Logic logic;

        public Robot(Logic logic)
        {
            this.logic = logic;
        }

        public void Run()
        {
            List<Node> path = BFS(new Node(null, null, Cloner.DeepClone(logic.state), logic));
            PrintSearchPath(path);
        }

        private List<Node> BFS(Node root)
        {
            List<Node> visited = new List<Node>();
            Queue<Node> queue = new Queue<Node>();
            Node current = null;
            queue.Enqueue(root);

            while (queue.Count != 0)
            {
                current = queue.Dequeue();
                logic.state = Cloner.DeepClone(current.state);
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