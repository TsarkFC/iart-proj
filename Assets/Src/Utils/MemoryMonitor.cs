using System;
using System.Threading;

namespace memorymonitor
{
    public class MemoryMonitor
    {
        private bool measure = false;
        private long maxMemory = -1, startMemory = -1, memorySum = -1;
        private int count = -1;

        public void Start()
        {
            measure = true;
            Thread thread = new Thread(Task);
            GC.Collect();
            GC.WaitForPendingFinalizers();
            Thread.Sleep(100);
            startMemory = GC.GetTotalMemory(false);
            thread.Start();
        }

        public long Stop()
        {
            measure = false;
            // UnityEngine.Debug.Log("Start memory: " + startMemory + ", end memory: " + maxMemory + ", avg memory: " + (memorySum/count));
            long res = maxMemory - startMemory;
            Thread.Sleep(15);
            maxMemory = -1;
            startMemory = -1;
            count = -1;
            memorySum = -1;
            return res;
        }

        public void Task()
        {
            while(measure)
            {
                long memory = GC.GetTotalMemory(false);
                if (memory > maxMemory) maxMemory = memory;
                memorySum += memory;
                count++;
                Thread.Sleep(10);
            }
        }

    }
}