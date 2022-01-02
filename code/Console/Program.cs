class Program
{
    static void Main(string[] args)
    {
        var input = System.IO.File.ReadLines("Calendar/" + args[0] + "input");
        switch (args[0])
        {
            case "day1":
                var parsedInput = Calendar.Day1.ParseInput(input);
                var result = Calendar.Day1.Solve(parsedInput);
                Console.WriteLine(result);
                break;
            default:
                Console.WriteLine("Invalid day identifier argument");
                break;
        }
    }
}
