Configuration InstallNecessarySoftwares {
    Import-DSCResource -ModuleName chocolatey -Name ChocolateySoftware, ChocolateyPackage 
    Node 'localhost' {
        ChocolateySoftware InstallChoco 
        {
            Ensure = "Present"
        }
        ChocolateyPackage InstallGit
        {
            Name = "git"
            Ensure = "Present"
        }
        ChocolateyPackage InstallVsCode 
        {
            Name = "vscode"
            Ensure = "Present"
        }
        ChocolateyPackage InstallVlc 
        {
            Name = "vlc"
            Ensure = "Present"
        }

    }
}

InstallNecessarySoftwares