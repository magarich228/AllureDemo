$prevLocation = Get-Location

Set-Location -Path "${PSScriptRoot}\allure"

Invoke-Expression "bzt ..\tp1.yaml ..\tp2.yaml ..\tp3.yaml"

Set-Location -Path "${prevLocation}"