$today = Get-Date -DisplayHint Date
$1weekago = $today.AddDays(-7)
$errors = Get-EventLog -LogName System -EntryType Error -After $1weekago | Select-Object TimeGenerated, Message | Format-Table -AutoSize -Wrap
if ($errors.Count -gt 10){
    "[KRITISKI] Sistema ir nestabila!`n" >> "$env:USERPROFILE\Documents\Errors.txt"
}else{
    "[OK] Kludu limenis normals.`n" >> "$env:USERPROFILE\Documents\Errors.txt"
}
$errors | Out-File -Append "$env:USERPROFILE\Documents\Errors.txt"
