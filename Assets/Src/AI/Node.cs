using System;
using System.Collections.Generic;
using logic;
using state;
using position;
using cloner;
using direction;

// namespace declaration 
namespace node
{
    // Class declaration 
    public class Node
    {
        public Node parent { get; }
        private Position direction;

        public State state { get; }
        public int cost { get; }
        public List<Node> ancestors { get; }
        public Movement.MovementType movement { get; }
        
        static public List<Direction> directions = new List<Direction>();

        public Node(Node parent, Direction direction, State state, int cost, List<Node> parentsAncestors)
        {
            this.cost = cost;
            this.parent = parent;
            this.direction = direction != null ? direction.direction : null;
            this.state = state;
            this.movement = direction != null ? direction.movement : Movement.MovementType.NONE;

            this.ancestors = new List<Node>(parentsAncestors);
            this.ancestors.Add(parent);

            if (directions.Count == 0)
            {
                directions.Add(new Direction(new Position(-1, 0), Movement.MovementType.LEFT));
                directions.Add(new Direction(new Position(1, 0), Movement.MovementType.RIGHT));
                directions.Add(new Direction(new Position(0, -1), Movement.MovementType.UP));
                directions.Add(new Direction(new Position(0, 1), Movement.MovementType.DOWN));
            }
        }

        private Node CreateNode(Direction direction, int cost)
        {
            State newState = Cloner.DeepClone(this.state);
            if (Logic.Move(newState, direction.direction) == null) return null;
            return new Node(this, direction, newState, cost, this.ancestors);
        }

        public List<Node> Expand()
        {
            List<Node> children = new List<Node>();

            foreach (Direction direction in directions)
            {
                // verify if moving directions are opposite
                if (parent != null && this.direction != null)
                {
                    Position add = this.direction + direction.direction;
                    if (add.Equals(new Position(0, 0))) continue;
                }

                // create new node and update logic state
                Node child = CreateNode(direction, this.cost + 1);
                if (child != null) children.Add(child);
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