using System;
using System.Runtime.InteropServices;

namespace ConsoleApp1
{
    class Program
    {
        [DllImport(@"\..\..\..\..\x64\Debug\Library.dll")]
        private static unsafe extern long my_procedure();

        static void Main(string[] args)
        {
            unsafe
            {
                Console.WriteLine(
                    "Procedura w języku Asembler zwróciła liczbę: "
                    + my_procedure()
                    );
            }
        }
    }
}



