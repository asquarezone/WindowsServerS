$processes = Get-Process

foreach ($process in $processes) {
    if ($process.Name -eq 'Calculator') {
        Write-Output $process.Name
    }    
}