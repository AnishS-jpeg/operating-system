Write-Host "--- SYSTEM HEALTH REPORT ---"
Write-Host "Date/Time: $(Get-Date)"
Write-Host "Hostname:  $($env:COMPUTERNAME)"
Write-Host "User:      $($env:USERNAME)"
$Drive = Get-PSDrive C | Select-Object Used, Free
Write-Host "Disk Usage (C:):"
Write-Host "Used: $([math]::Round($Drive.Used / 1GB, 2)) GB"
Write-Host "Free: $([math]::Round($Drive.Free / 1GB, 2)) GB"