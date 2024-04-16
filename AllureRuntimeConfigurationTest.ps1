#Set ALLURE_CONFIG env variable to .\allure\allureConfig.json in launch settings.
$allureConfigPath = "${PSScriptRoot}\allure\allureConfig.json"

Get-Content -Path "${allureConfigPath}"
Start-Process -FilePath "powershell.exe" -ArgumentList "${PSScriptRoot}\runBztConfig.ps1 tp1.yaml"

Start-Sleep -Seconds 10

$content = "{
  `"`$schema`": `"https://raw.githubusercontent.com/allure-framework/allure-csharp/2.12.0/Allure.Net.Commons/Schemas/allureConfig.schema.json`",
  `"allure`": {
    `"directory`": `"allure-results2`",
    `"links`": [
      `"https://example.org/{issue}`",
      `"https://example.org/{tms}`"
    ]
  }
}";
Set-Content -Path "${allureConfigPath}" $content

Start-Sleep -Seconds 3

Get-Content -Path "${allureConfigPath}"
Start-Process -FilePath "powershell.exe" -ArgumentList "${PSScriptRoot}\runBztConfig.ps1 tp2.yaml"

Start-Sleep -Seconds 10

$content = "{
  `"`$schema`": `"https://raw.githubusercontent.com/allure-framework/allure-csharp/2.12.0/Allure.Net.Commons/Schemas/allureConfig.schema.json`",
  `"allure`": {
    `"directory`": `"allure-results3`",
    `"links`": [
      `"https://example.org/{issue}`",
      `"https://example.org/{tms}`"
    ]
  }
}"
Set-Content -Path "${allureConfigPath}" $content

Start-Sleep -Seconds 3

Get-Content -Path "${allureConfigPath}"
Start-Process -FilePath "powershell.exe" -ArgumentList "${PSScriptRoot}\runBztConfig.ps1 tp3.yaml"

Start-Sleep -Seconds 10

$content = "{
  `"`$schema`": `"https://raw.githubusercontent.com/allure-framework/allure-csharp/2.12.0/Allure.Net.Commons/Schemas/allureConfig.schema.json`",
  `"allure`": {
    `"directory`": `"allure-results1`",
    `"links`": [
      `"https://example.org/{issue}`",
      `"https://example.org/{tms}`"
    ]
  }
}"
Set-Content -Path "${allureConfigPath}" $content
