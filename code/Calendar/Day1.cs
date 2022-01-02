namespace Calendar;

public static class Day1
  {
    public static int[] ParseInput(IEnumerable<String> input)
    {
        var filename = "Calendar/day1input";
        var depths = input.Select(depth => int.Parse(depth));
        return depths.ToArray();
    }

    public static int Solve(int[] depths)
    {
        return depths
            .Skip(1)
            .Select((x, i) => x > depths[i])
            .Count(x => x);
    }
}
