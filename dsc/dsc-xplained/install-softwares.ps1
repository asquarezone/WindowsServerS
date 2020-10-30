$config_data = @{
    AllNodes = @(
        @{
            NodeName = 'qtdevserver01'
        },
        @{
            NodeName = 'qt-dc1'
        }

    )

}

Configuration InstallUtilitiesSoftware {
    Import-DSCResource -ModuleName PSDesiredStateConfiguration -Name WindowsFeature

    Node $AllNodes.NodeName
    {
        # DSC Resources
        WindowsFeature IISServer
        {
            Name = "Web-Server"
            Ensure = "Present"
        }
    }
}

InstallUtilitiesSoftware -ConfigurationData $config_data