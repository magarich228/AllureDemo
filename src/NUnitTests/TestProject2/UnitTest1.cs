using Allure.NUnit;

namespace TestProject2;

[TestFixture, AllureNUnit]
public class Tests
{
    [SetUp]
    public void Setup()
    {
    }

    [Test]
    public void Test1()
    {
        Assert.True(true);
    }
}