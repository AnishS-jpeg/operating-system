Get-Process |
Sort-Object WorkingSet -Descending |
Select-Object -First 5 Name, Id, @{Name="Memory(MB)";Expression={[math]::round($_.WorkingSet/1MB,2)}}
