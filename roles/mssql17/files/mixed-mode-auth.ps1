[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-Module PowerShellGet -RequiredVersion 2.2.4 -SkipPublisherCheck -Force

Install-Module -Name SqlServer -AllowClobber -Force
Install-Module -Name SQL-SMO -RequiredVersion 0.3.1 -Force

# Connect to the instance using SMO
$s = new-object ('Microsoft.SqlServer.Management.Smo.Server') '<Windows host name>'
[string]$nm = $s.Name
[string]$mode = $s.Settings.LoginMode

write-output "Instance Name: $nm"
write-output "Login Mode: $mode"

#Change to Mixed Mode
$s.Settings.LoginMode = [Microsoft.SqlServer.Management.SMO.ServerLoginMode]::Mixed

# Make the changes
$s.Alter()
