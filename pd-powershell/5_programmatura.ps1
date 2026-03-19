$upgrad = winget upgrade
$upgradcount = $upgrad[-1].Substring(0,2)
Write-Host "Sistema ir $upgradcount programmas, kuras nepieciesams atjauninat."