$test = Get-Process | Select-Object WorkingSet, ProcessName | Sort-Object WorkingSet -Descending | Select-Object -First 5 | Where-Object ProcessName -notlike "svchost"
$sum = ($test.WorkingSet | Measure-Object -sum).Sum /1024 /1024
Write-Host "Top 5 procesu total RAM: $sum MB"