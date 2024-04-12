using System.Globalization;

namespace TestProject3;

[TestFixture]
public class ExampleTests
{
    [Test]
    public void NotNullTest()
    {
        Assert.NotNull(new object());
    }

    [Test]
    public void Test()
    {
        StringAssert.Contains(
            DateTime.Now.Day.ToString(), 
            DateTime.Now.ToString(CultureInfo.InvariantCulture));
    }
}