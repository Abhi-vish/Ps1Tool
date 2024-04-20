param (
    [string]$FileName
)

# Construct the URL of the raw file using the repository name and file name
$url = "https://github.com/Abhi-vish/CMDTool/raw/main/Ps1Tool/Content/$FileName"

# Download the file content from the URL
$content = Invoke-WebRequest -Uri $url

# Extract the filename from the URL
$fileName = [System.IO.Path]::GetFileName($url)

# Save the downloaded content to a temporary file
$tempFilePath = Join-Path -Path $env:TEMP -ChildPath $fileName
$content.Content | Out-File -FilePath $tempFilePath -Encoding utf8

# Copy the content of the downloaded file to the clipboard
$content = Get-Content $tempFilePath
$content | Set-Clipboard

# Remove the temporary file
Remove-Item -Path $tempFilePath

Write-Output "Content from $FileName in repository $RepoName copied to clipboard."
