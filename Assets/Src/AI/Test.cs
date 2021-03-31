using System.Collections.Generic;
using System.Collections;
using System.IO;
using System;
using System.Linq;

using datastructures;

public class Test
    {
        static void Main(string[] args)
        {
            PriorityQueue<int> pq = new PriorityQueue<int>(PriorityQueue<int>.PQType.MIN);
            Random rnd = new Random();

            List<int> insertedNumbers = new List<int>();

            int count = 0;
            while (count < 10000)
            {
                if (!pq.IsEmpty() && rnd.Next(0, 10) < 5)
                {
                    int res = pq.Pop(), realMax = insertedNumbers.Min();
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