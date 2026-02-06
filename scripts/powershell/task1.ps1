param ($filename)

if (!(Test-Path $filename)) {
    Write-Output "File does not exist."
    exit
}

$size = (Get-Item $filename).Length

if ($size -gt 1048576) {
    Write-Output "Warning: File is too large"
} else {
    Write-Output "File size is within limits."
}
