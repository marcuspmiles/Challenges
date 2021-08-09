#Enables file & printer sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
#Allows inbound ICMP traffic
New-NetFirewallRule -DisplayName "Allow inbound ICMPv4" -Direction Inbound -Protocol ICMPv4 -IcmpType 8 -RemoteAddress localsubnet -Action Allow
New-NetFirewallRule -DisplayName "Allow inbound ICMPv6" -Direction Inbound -Protocol ICMPv6 -IcmpType 8 -RemoteAddress localsubnet -Action Allow
#Enables Remoting
Enable-PSRemoting
#Removes Bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
#Enables HyperV
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
#Toggles SMB1 protocol to false, disabling it
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
