$QSA = Get-MpComputerStatus | Select-Object QuickScanAge
$RTPE = Get-MpComputerStatus | Select-Object RealTimeProtectionEnabled


if ("[int($QSA)]" -gt 3){
    Write-Host "Sistema ir apdraudeta!" -ForegroundColor Red
}
if($RTPE -eq "False"){
    Write-Host "Sistema ir apdraudeta!" -ForegroundColor Red
}else{
    Write-Host "Sistema ir drosa!" -ForegroundColor Green
}
