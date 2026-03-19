$cdrive = Get-PSDrive -Name C | Select-Object Used, Free
$cUsed = $cdrive.Used
$cFree = $cdrive.Free
$cTotal = $cFree + $cUsed
$freespace = ($cFree/$cTotal)*100
Get-Date -Format "dd/MM/yyyy HH:mm" >> $env:USERPROFILE\Documents\Apkope.log

if($freespace -lt 25){
    Remove-Item $env:TEMP\
    Remove-Item C:\$Recycle.Bin\
    $cFreeClean = $cdrive.Free
    $cCleanedSpace = ($cFree - $cFreeClean)/1024/1024/1024
    "Tirisana veikta. Atbrivoti $cCleanedSpace GB.`n" >> $env:USERPROFILE\Documents\Apkope.log
}else{
    "Vieta pietiekama.`n" >> $env:USERPROFILE\Documents\Apkope.log
}