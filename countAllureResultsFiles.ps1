$num = $args[0]
$allureResultsDir = "${PSScriptRoot}\allure\allure-results${num}";

if (Test-Path -Path "${allureResultsDir}")
{
    Write-Host ( Get-ChildItem "${allureResultsDir}" | Measure-Object ).Count;
}
else 
{
    Write-Host "Allure results dir does not exist."
}