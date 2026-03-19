#nepabeigts ar ItemNotFound Exception 4. rindā
$date = Get-Date -Format "yyyy-MM-dd"
Get-ChildItem -path "$env:USERPROFILE\Documents\Errors.txt" -ErrorAction silentlycontinue -recurse | Compress-Archive -DestinationPath "$env:USERPROFILE\Documents\Atskaite_$date.zip" -Update
$file = Get-Item "$env:USERPROFILE\Documents\Atskaite_$date.zip"
$filesize = $file.length / 1024
Write-Host "Arhiva izmers: $filesize KB"