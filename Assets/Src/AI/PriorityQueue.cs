using System.Collections.Generic;
using System.Collections;
using System.IO;
using System;
using System.Linq;

namespace datastructures
{
    public class HeapNode<T>
    {
        private T data;
        private HeapNode<T> parent;
        private List<HeapNode<T>> children = new List<HeapNode<T>>();
        private int priority;

        public HeapNode(HeapNode<T> parent, T data, int priority)
        {
            this.parent = parent;
            this.data = data;
            this.priority = priority;
        }

        public void AddChild(HeapNode<T> child)
        {
            if (this.IsFull()) throw new System.Exception("[PriorityQueue] Trying to add a child to a node that is full.");
            this.children.Add(child);
        }

        public void RemoveChild(HeapNode<T> child)
        {
            if (!this.children.Remove(child)) throw new System.Exception("[PriorityQueue] Could not remove child from node.");
        }

        public Boolean HasLargerChild()
        {
            foreach(HeapNode<T> child in children)
            {
                if (child.GetPriority() > this.GetPriority())
                {
                    return true;
                }
            }
            return false;
        }

        public HeapNode<T> GetLargestChild()
        {
            if (children.Count == 0) return null;
            else if (children.Count == 1) return children[0];
            else return children[0].GetPriority() > children[1].GetPriority() ? children[0] : children[1];
        }

        public int GetPriority()
        {
            return this.priority;
        }

        public HeapNode<T> GetParent()
        {
            return this.parent;
        }

        public void SetParent(HeapNode<T> parent)
        {
            this.parent = parent;
        }

        public List<HeapNode<T>> GetChildren()
        {
            return this.children;
        }

        public void SetChildren(List<HeapNode<T>> children)
        {
            this.children = children;
        }

        public bool IsFull()
        {
            return this.children.Count == 2;
        }

        public int ChildrenCount()
        {
            return this.children.Count;
        }

        public T GetData()
        {
            return this.data;
        }

        public String dumpChildren()
        {
            String output = "[";
            foreach (HeapNode<T> child in children)
            {
                output += child.GetData() + ",";
            }
            output += "]";
            return output;
        }

        public override string ToString()
        {
            return "(data: " + data + ", priority: " + priority + ", parent: " + parent + ", children: " + dumpChildren() + ")";
        }
    }
    
    public class PriorityQueue<T>     // heap-based priority queue
    {
        private HeapNode<T> root = null, bottom = null, lastNode = null;

        private class BestBottomMatch {
            public HeapNode<T> node { get; set; }
            public int depth { get; set; }

            public BestBottomMatch()
            {
                this.node = null;
                this.depth = -1;
            }

            public BestBottomMatch(HeapNode<T> node, int depth)
            {   
                this.node = node;
                this.depth = depth;
            }

            public void set(HeapNode<T> node, int depth)
            {   
                this.node = node;
                this.depth = depth;
            }
        }

        private void Swap(HeapNode<T> parent, HeapNode<T> child)
        {
            if (parent == this.root) this.root = child;
            List<HeapNode<T>> parentChildren = parent.GetChildren();

            parent.SetChildren(child.GetChildren());      // 'child's children become the 'parent's children
            foreach (HeapNode<T> n in parent.GetChildren())
            {
                n.SetParent(parent);   // updating the parent of those children
            }

            
            HeapNode<T> parentsParent = parent.GetParent();
            if (parentsParent != null)  // changing the child of the 'parent's parent to be the 'child' instead
            {
                parentsParent.RemoveChild(parent);
                parentsParent.AddChild(child);
            }
            child.SetParent(parentsParent);  // updating the parent of the 'child' to be the 'parent's parent

            child.SetChildren(parentChildren);   // 'parent's children become the 'child's children
            child.RemoveChild(child);   // replacing the 'child' itself by the 'parent' (which is now one of the 'child's children)
            child.AddChild(parent);

            foreach (HeapNode<T> n in child.GetChildren())
            {
                n.SetParent(child);  // updating the parent of those children (previously was 'parent')
            }

            // the 'child' is now the parent of the 'parent'
        }

        public T Pop()
        {
            if (this.IsEmpty()) throw new System.Exception("[PriorityQueue] Tried popping while empty.");
            T res = this.root.GetData();

            // Console.WriteLine("The last node is " + this.lastNode);

            // the last node becomes the root
            if (this.lastNode.GetParent() == this.root)
            {
                this.lastNode.SetChildren(this.root.GetChildren());
                this.lastNode.RemoveChild(lastNode);
                foreach(HeapNode<T> child in this.lastNode.GetChildren())
                {
                    child.SetParent(this.lastNode);
                }
                this.lastNode.SetParent(null);
                this.root = this.lastNode;
            }
            else if (this.lastNode.GetParent() != null)
            {
                this.lastNode.SetChildren(this.root.GetChildren());
                foreach(HeapNode<T> child in this.lastNode.GetChildren())
                {
                    child.SetParent(this.lastNode);
                }
                this.lastNode.GetParent().RemoveChild(this.lastNode);
                this.lastNode.SetParent(null);
                this.root = this.lastNode;
            }
            else  // when the last node is the root
            {
                this.root = null;
                this.bottom = null;
                this.lastNode = null;
                return res;
            }

            HeapNode<T> movingNode = this.root;
            while(movingNode.HasLargerChild())
            {
                HeapNode<T> largestChild = movingNode.GetLargestChild();
                Swap(movingNode, largestChild);
            }

            UpdateBottom();
            UpdateLastNode();
            return res;
        }

        public void Insert(T data, int priority)
        {
            HeapNode<T> newNode = new HeapNode<T>(this.bottom, data, priority);

            if (this.root == null)   // if empty
            {
                this.root = newNode;
                this.bottom = newNode;
                this.lastNode = newNode;
                return;
            }

            this.bottom.AddChild(newNode);

            if (IsLarger(newNode, newNode.GetParent())) this.lastNode = newNode.GetParent();
            else this.lastNode = newNode;


            while (IsLarger(newNode, newNode.GetParent()))
            {
                //Console.WriteLine("Swapping " + newNode + " with " + newNode.GetParent());
                Swap(newNode.GetParent(), newNode);
            }

            UpdateBottom();
            //Console.WriteLine($"Inserted node ({newNode}). New bottom = " + this.bottom);
        }

        public bool IsEmpty()
        {
            return this.root == null;
        }

        private void UpdateLastNode()
        {
            if (!this.root.IsFull())
            {
                if (this.root.ChildrenCount() == 0) this.lastNode = this.root;
                else this.lastNode = this.root.GetChildren()[0];
            }
            else this.lastNode = UpdateLastNode(this.root, 1).node;
        }

        private BestBottomMatch UpdateLastNode(HeapNode<T> nextNode, int nextNodeChildrenDepth)
        {
            BestBottomMatch best = new BestBottomMatch();

            foreach (HeapNode<T> child in nextNode.GetChildren())
            {
                if (child.ChildrenCount() == 0)
                {
                    if (best.node == null || nextNodeChildrenDepth > best.depth)
                    {
                        best.set(child, nextNodeChildrenDepth);
                    }
                }
                else
                {
                    BestBottomMatch candidateBest = UpdateLastNode(child, nextNodeChildrenDepth + 1);
                    if (best.node == null || candidateBest.depth > best.depth)
                    {
                        best.set(candidateBest.node, candidateBest.depth);
                    }
                }
            }

            return best;
        }

        private void UpdateBottom()
        {
            if (!this.root.IsFull()) this.bottom = this.root; 
            else this.bottom = UpdateBottom(this.root, 1).node; 
        }

        private BestBottomMatch UpdateBottom(HeapNode<T> nextNode, int nextNodeChildrenDepth)  // o nó em menos profundidade ao qual puder ser adicionado pelo menos um filho
        {
            foreach (HeapNode<T> child in nextNode.GetChildren())
            {
                if (!child.IsFull())
                {
                    return new BestBottomMatch(child, nextNodeChildrenDepth);  // if one of the children is not full it is the optimal bottom of this branch (no need to check further)
                }
            }

            // if no bottom candidate found yet:
            BestBottomMatch best = new BestBottomMatch();

            foreach(HeapNode<T> child in nextNode.GetChildren())
            {
                BestBottomMatch candidateBest = UpdateBottom(child, nextNodeChildrenDepth + 1);
                if (best.node == null || candidateBest.depth < best.depth)
                {
                    best.set(candidateBest.node, candidateBest.depth);
                }
            }

            return best;
        }

        private bool IsLarger(HeapNode<T> n1, HeapNode<T> n2)
        {
            if (n2 == null) return false;
            return n1.GetPriority() > n2.GetPriority();
        }

        public void CheckNodeValidity(HeapNode<T> node)
        {
            foreach (HeapNode<T> child in node.GetChildren())
            {
                if (child.GetPriority() > node.GetPriority())
                {
                    throw new System.Exception("Priority Queue integrity is violated! Parent: " + node + ", child: " + child);
                }
                CheckNodeValidity(child);
            }
        }

        public void CheckValidity()
        {
            if (!this.IsEmpty()) CheckNodeValidity(this.root);

            Console.WriteLine("PQ is valid!");
        }

        private String dumpNode(HeapNode<T> node, int offset)
        {
            String spacing = new String(' ', offset*3);
            String output = spacing + node.GetData() + "\n";

            foreach (HeapNode<T> n in node.GetChildren())
            {
                output += dumpNode(n, offset + 1);
            }

            return output;
        }

        public override string ToString()
        {
            return this.root == null ? "The priority queue is empty\n" : dumpNode(this.root, 0);
        }
    }

    public class Test
    {
        static void Main(string[] args)
        {
            PriorityQueue<int> pq = new PriorityQueue<int>();
            Random rnd = new Random();

            List<int> insertedNumbers = new List<int>();

            int count = 0;
            while (count < 100000)
            {
                if (!pq.IsEmpty() && rnd.Next(0, 10) < 5)
                {
                    int res = pq.Pop(), realMax = insertedNumbers.Max();
                    if (res != realMax) throw new System.Exception("The value that was popped out of the priority queue is not the max! Value: " + res + ", max: " + realMax);
                    insertedNumbers.Remove(res);

                    Console.WriteLine("\nPopped: " + res);
                    Console.Write(pq);
                    pq.CheckValidity();
                }
                else
                {
                    int n = rnd.Next(0, 10000000);
                    pq.Insert(n, n);
                    insertedNumbers.Add(n);

                    Console.WriteLine($"\nInserted '{n}'.");
                    Console.Write(pq);
                    pq.CheckValidity();
                }
                count++;
            }

            Console.WriteLine("Test Success");
        }
    }
}

