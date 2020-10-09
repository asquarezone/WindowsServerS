$folderPath = ".\dummy"
try {
    $filesInFolder = Get-ChildItem -Path $folderPath
}
catch {
    Write-Output "Error Happened"
}