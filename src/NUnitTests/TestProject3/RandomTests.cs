using Allure.NUnit;
using NUnit.Framework.Internal;

namespace TestProject3;

public static class Counter
{
    private static int Count { get; set; }

    public static void Inc()
    {
        Count++;
        Console.WriteLine($"Count: {Count}");
    }
}

[TestFixture, AllureNUnit]
public class RandomTests
{
    [Test]
    public void RandomTest()
    {
        Counter.Inc();
        Assert.True(Randomizer.CreateRandomizer().NextBool());
    }
}