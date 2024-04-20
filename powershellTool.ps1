param (
    [string]$FileName
)

$content = Get-Content $FileName
$content | Set-Clipboard
Write-Output "Content of $FileName copied to clipboard."
