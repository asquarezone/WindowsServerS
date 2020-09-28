$servers = @('google.com', 'facebook.com', 'linkedin.com', 'asdklfjasdkl')

$servers.foreach({
    $serverName = $_
    $isServerUp = Test-Connection -ComputerName $serverName -Quiet -Count 1

    if ($isServerUp -eq $true) {
        Write-Output "$serverName is up and running"
    }
    else {
        Write-Output "$serverName is down"
    }
})


