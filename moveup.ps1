# Set the root drive and directory to scan for files. In this case, it's the root of the N: drive.
$rootPath = "N:\"

# Get all files (not directories) recursively under the root path.
Get-ChildItem -Path $rootPath -Recurse -File | ForEach-Object {
    # Check if the file is not already in the root directory.
    if ($_.DirectoryName -ne $rootPath) {
        # Construct the destination path in the root directory.
        $destination = Join-Path -Path $rootPath -ChildPath $_.Name
        
        # Check if a file with the same name already exists in the root directory.
        if (Test-Path -Path $destination) {
            # If it exists, remove the existing file to avoid conflicts.
            Remove-Item -Path $destination -Force
        }
        
        # Move the file from its current location to the root directory.
        Move-Item -Path $_.FullName -Destination $destination
    }
}
