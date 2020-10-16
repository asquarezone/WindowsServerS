function Get-LTFileNames {
    <#
    .SYNOPSIS
        This function prints the file names and is used for learning

    .DESCRIPTION
        This function is created for learning purposes

    #>
    begin {
        Write-Output "Processing File names"
    }
    process {
        Write-Host "$_"
    }

    end {
        Write-Output "Finished Processing File Names"
    }
    
}

function Get-LTSmallFiles {
    <#
    .SYNOPSIS
        This function will be returning all the files in the $location which are less that $size

    .DESCRIPTION
        This function is used for learning purposes. This function will iterate through all the files
        present in the $location which are less than $size

    .PARAMETER Size
        This parameter defines file size
    
    .PARAMETER Location
        This parameter defines the location where the files have to be searched
    
    #>
    param (
        [PSDefaultValue(Help = '500')]
        [int]$Size = 500,
        [PSDefaultValue(Help = ".")]
        [string]$Location = "."
    )

    Get-ChildItem $Location | Where-Object {
        $_.Length -lt $Size 
    }
    
}