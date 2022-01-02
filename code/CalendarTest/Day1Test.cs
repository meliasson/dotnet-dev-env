using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CalendarTest;

[TestClass]
public class Day1Test
{
    [TestMethod]
    public void Solve_OnlyIncreasingDepths_ReturnsNrOfDepthIncreases()
    {
        int[] input = new int[] { 1, 3, 100 };

        var result = Calendar.Day1.Solve(input);

        Assert.AreEqual(2, result);
    }
}
