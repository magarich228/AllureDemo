$configArg = $args[0]
$prevLocation = Get-Location

Set-Location -Path "${PSScriptRoot}\allure"

Start-Process -FilePath "powershell.exe" -ArgumentList "bzt ..\${configArg}" -Environment @{ ALLURE_CONFIG="C:\Users\k.groshev\RiderProjects\AllureDemo\allure\allureConfig.json" }

Set-Location -Path "${prevLocation}"