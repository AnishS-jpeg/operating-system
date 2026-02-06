# Create dummy file
"Error: Login failed`nSuccess`nError: Disk full`nWarning: High temp" | Out-File -FilePath server.log

$Count = (Select-String -Path .\server.log -Pattern "Error").Count
Write-Host "Total error lines found: $Count"