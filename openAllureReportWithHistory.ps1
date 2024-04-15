function Start-AllureReportServer()
{
    $prevLocation = Get-Location
    Set-Location -Path "${PSScriptRoot}\allure"
    
    Write-Host "Generating report.."
    Invoke-Expression "allure generate -c"
    
    Write-Host "Allure Server starting.."
    Start-Process -FilePath "allure" -ArgumentList "open"
    
    Set-Location -Path $prevLocation
}

if (-not(Test-Path -Path "${PSScriptRoot}\allure\allure-results"))
{
    Write-Host "Allure test results is empty."
    exit
}

if (Test-Path -Path "${PSScriptRoot}\allure\allure-report")
{
    Write-Host "Allure report exist. Copy history form report to results."
    if (Test-Path -Path "${PSScriptRoot}\allure\allure-results\history")
    {
        Remove-Item -Path "${PSScriptRoot}\allure\allure-results\history\*" -Recurse
    }
    
    Copy-Item -Path "${PSScriptRoot}\allure\allure-report\history\*" -Destination "${PSScriptRoot}\allure\allure-results\history\" -Recurse
    Start-AllureReportServer
} 
else 
{
    Write-Host "Allure report does not exist."
    Start-AllureReportServer
}