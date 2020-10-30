Configuration InstallUtilitiesSoftware {
    Import-DSCResource -ModuleName PSDesiredStateConfiguration -Name WindowsFeature

    Node 'qtdevserver01'
    {
        # DSC Resources
        WindowsFeature 'IISServer' 
        {
            Name = "Web-Server"
            Ensure = "Present"
        }
    }
}

InstallUtilitiesSoftware