using System;
using System.Collections.Generic;
using logic;
using state;
using position;
using cloner;

// namespace declaration 
namespace node
{
    // Class declaration 
    public class Node
    {
        public Node parent { get; }
        private Position direction;
        public State state { get; }
        private Logic logic;
        static private List<Position> directions = new List<Position>();

        public Node(Node parent, Position direction, State state, Logic logic)
        {
            this.parent = parent;
            this.direction = direction;
            this.state = state;
            this.logic = logic;

            if (directions.Count == 0)
            {
                directions.Add(new Position(-1, 0));
                directions.Add(new Position(1, 0));
                directions.Add(new Position(0, -1));
                directions.Add(new Position(0, 1));
            }
        }

        private Node CreateNode(Position direction)
        {
            if (logic.Move(direction) == null) return null;
            return new Node(this, direction, logic.state, this.logic);
        }

        public List<Node> Expand()
        {
            List<Node> children = new List<Node>();

            foreach (Position direction in directions)
            {
                // verify if moving directions are opposite
                if (parent != null && this.direction != null)
                {
                    Position add = this.direction + direction;
                    if (add.Equals(new Position(0, 0))) continue;
                }

                // create new node and update logic state
                Node child = CreateNode(direction);
                if (child != null) children.Add(child);
                logic.state = Cloner.DeepClone(this.state);
            }
            return children;
        }

        public override bool Equals(Object obj)
        {
            if (!(obj is Node)) return false;
            Node node = (Node)obj;
            return state.Equals(node.state);
        }
        public override int GetHashCode() => 0;
    }
}