$allureResultsDir = "${PSScriptRoot}\allure\allure-results";

if (Test-Path -Path "${allureResultsDir}")
{
    Write-Host ( Get-ChildItem "${allureResultsDir}" | Measure-Object ).Count;
}
else 
{
    Write-Host "Allure results dir does not exist."
}