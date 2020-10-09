New-Item C:\Temp\ACL -ItemType Directory -Force

1..7 | ForEach-Object {
    $current_dir_path = "C:\Temp\ACL\$_"
    New-Item $current_dir_path -ItemType Directory -Force

    1..5 | ForEach-Object {
        $current_file_path = "$current_dir_path\$_.txt"
        New-Item $current_file_path -ItemType File -Force
    }

}