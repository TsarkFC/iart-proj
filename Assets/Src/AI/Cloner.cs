using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

namespace cloner
{
    // https://stackoverflow.com/questions/129389/how-do-you-do-a-deep-copy-of-an-object-in-net
    public static class Cloner
    {
        public static T DeepClone<T>(this T obj)
        {
            using (var ms = new MemoryStream())
            {
                var formatter = new BinaryFormatter();
                formatter.Serialize(ms, obj);
                ms.Position = 0;

                return (T)formatter.Deserialize(ms);
            }
        }
    }
}

