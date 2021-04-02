namespace statsresults
{
    public class StatsResults
    {
        public float timeSpent { get; set; }
        public int nNodesVisited { get; set; }
        public float maxMemoryUsed { get; set; } 
        public int nMovesUsed { get; set; }
        
        public StatsResults(float timeSpent, int nNodesVisited, float maxMemoryUsed, int nMovesUsed)
        {
            this.timeSpent = timeSpent;
            this.nNodesVisited = nNodesVisited;
            this.maxMemoryUsed = maxMemoryUsed;
            this.nMovesUsed = nMovesUsed;
        }
    }
}