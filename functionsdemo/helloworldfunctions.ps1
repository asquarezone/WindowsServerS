function Get-LTVersion {
    $PSVersionTable.PSVersion
}

function Add-LTNumbers {
    param (
        [Int32]$Number1,
        [Int32]$Number2
    )
    Write-Output $Number1.GetType()
    Write-Output $Number1+$Number2
    
}

Get-LTVersion

Add-LTNumbers -Number1 10 -Number2 12