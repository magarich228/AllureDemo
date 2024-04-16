// //Подход с генерацией Allure конфига для тестовой сборки.
// // (Есть проблемы совместимости при большом количестве итераций нагрузочного тестирования через Taurus)
// using System.Reflection;
// using System.Text;
// using Allure.Net.Commons;
// using System.Text.Json;
//
// namespace TestProject3;
//
// [SetUpFixture]
// internal class PrepareOutputDirectoryFixture
// {
//     private string? _path;
//
//     [OneTimeSetUp]
//     public void SetOutputDirectory()
//     {
//         this._path = Path.GetTempFileName();
//         var directory = Directory.CreateDirectory(
//             Path.Combine(
//                 GetCurrentAllureDirectory(),
//                 CreateSubfolderName()
//             )
//         );
//         File.WriteAllText(
//             this._path,
//             JsonSerializer.Serialize(
//                 new { allure = new { directory = directory.FullName } }
//             ),
//             Encoding.UTF8
//         );
//         Environment.SetEnvironmentVariable(AllureConstants.ALLURE_CONFIG_ENV_VARIABLE, this._path);
//     }
//
//     [OneTimeTearDown]
//     public void DeleteTempConfigFile()
//     {
//         Environment.SetEnvironmentVariable(AllureConstants.ALLURE_CONFIG_ENV_VARIABLE, null);
//         if (this._path is not null && File.Exists(this._path))
//         {
//             File.Delete(this._path);
//         }
//     }
//
//     static string GetCurrentAllureDirectory() => "allure-results";
//
//     static string CreateSubfolderName() => DateTime.Now.ToString("")
//         .Replace(' ', '_')
//         .Replace(':', '.');
// }