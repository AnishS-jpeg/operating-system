Get-ChildItem *.txt | Where-Object { $_.Name -notlike "OLD_*" } | ForEach-Object {
    Rename-Item $_.Name -NewName ("OLD_" + $_.Name)
    Write-Host "Renamed $($_.Name) to OLD_$($_.Name)"
}