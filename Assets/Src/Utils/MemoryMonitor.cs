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
            startMemory = GC.GetTotalMemory(false);
            thread.Start();
        }

        public long Stop()
        {
            measure = false;
            TakeMeasurement();
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
                TakeMeasurement();
                Thread.Sleep(10);
            }
        }

        private void TakeMeasurement()
        {
            long memory = GC.GetTotalMemory(false);
            if (memory > maxMemory) maxMemory = memory;
            memorySum += memory;
            count++;
        }

    }
}