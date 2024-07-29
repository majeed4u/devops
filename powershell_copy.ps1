# Define variables
$localPath = "\\192.168.145.1\test"
$remoteUser = "majed"
$remoteHost = "localhost"
$remotePath = "/home/majed/github/yaml"
$sshKeyPath = "/home/majed/.ssh/ansible_id_rsa"

# Ensure paths are properly quoted
$scpCommand = "scp -i `"$sshKeyPath`" -r `"$localPath\`" $remoteUser@$remoteHost:`"$remotePath`""

# Execute the SCP command
try {
    Write-Output "Executing: $scpCommand"
    Invoke-Expression $scpCommand
    Write-Output "Files copied successfully."
} catch {
    Write-Error "An error occurred: $_"
}
