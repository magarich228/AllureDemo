namespace TestProject1;

[TestFixture]
public class ExampleTests
{
    [Test]
    public void ExceptionTest()
    {
        var num = 15;
        
        // ReSharper disable once IntDivisionByZero
        Assert.ThrowsAsync<DivideByZeroException>(() => Task.FromResult(num / 0));
    }

    [Test]
    public void NullTest()
    {
        Assert.Null(null);
    }
}