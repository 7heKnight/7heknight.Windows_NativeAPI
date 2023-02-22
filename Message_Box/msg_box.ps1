Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

[Serializable]
    public static class Program
    {
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern int MessageBoxW(IntPtr hWnd, string lpText, string lpCaption, uint uType);

        public static void Main()
        {
            MessageBoxW(IntPtr.Zero, "My first P/Invoke", "Hello World", 0);
        }
    }
"@
[Program]::Main()
