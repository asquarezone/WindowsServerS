$folderPath = ".\dummy"
try {
    $filesInFolder = Get-ChildItem -Path $folderPath
    
    $filesInFolder.foreach({
        Write-Output Get-Content $_
    })
}
catch {
    Write-Output "Error occured: So Stopping Execution $_.Exception.Message"    
}
finally {
    Write-Output "Finished execution"
}
