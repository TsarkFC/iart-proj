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
        private Logic logic;
        public Movement.MovementType movement { get; }
        // public class Direction {
        //     public Position direction { get; }
        //     public Movement.MovementType movement { get; }

        //     public Direction(Position direction, Movement.MovementType movement)
        //     {
        //         this.direction = direction;
        //         this.movement = movement;
        //     }
        // }
        static public List<Direction> directions = new List<Direction>();

        public Node(Node parent, Direction direction, State state, Logic logic)
        {
            this.parent = parent;
            this.direction = direction != null ? direction.direction : null;
            this.state = state;
            this.logic = logic;
            this.movement = direction != null ? direction.movement : Movement.MovementType.NONE;

            if (directions.Count == 0)
            {
                directions.Add(new Direction(new Position(-1, 0), Movement.MovementType.LEFT));
                directions.Add(new Direction(new Position(1, 0), Movement.MovementType.RIGHT));
                directions.Add(new Direction(new Position(0, -1), Movement.MovementType.UP));
                directions.Add(new Direction(new Position(0, 1), Movement.MovementType.DOWN));
            }
        }

        private Node CreateNode(Direction direction)
        {
            if (logic.Move(direction.direction) == null) return null;
            return new Node(this, direction, logic.state, this.logic);
        }

        public List<Node> Expand(bool includeNulls)
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
                Node child = CreateNode(direction);
                if (child != null || includeNulls) children.Add(child);
                logic.state = Cloner.DeepClone(this.state);  // ??
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