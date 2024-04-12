namespace TestProject2;

[TestFixture]
public class ExampleTests
{
    [Test]
    public void ZeroTest()
    {
        Assert.Zero(0);
    }

    [Test]
    public void FailTest()
    {
        Assert.Fail();
    }
}