using System;

namespace statsresults
{
    public class StatsResults
    {
        public float timeSpent { get; set; }
        public int nNodesVisited { get; set; }
        public long maxMemoryUsed { get; set; } 
        public int nMovesUsed { get; set; }
        
        public StatsResults(float timeSpent, int nNodesVisited, long maxMemoryUsed, int nMovesUsed)
        {
            this.timeSpent = timeSpent;
            this.nNodesVisited = nNodesVisited;
            this.maxMemoryUsed = maxMemoryUsed;
            this.nMovesUsed = nMovesUsed;
        }

        public void DisplayCli() 
        {
            Console.WriteLine("Time spent: " + timeSpent.ToString() + " ms");
            Console.WriteLine("Nodes visited: " + nNodesVisited.ToString());
            Console.WriteLine("Max memory used: " + maxMemoryUsed.ToString() + "\n");
        }
    }
}