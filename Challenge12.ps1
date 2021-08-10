#Creating a new file that holds all contents of an ipconfig command
ipconfig /all | Out-File -FilePath .\network_report.txt
#Searches the file for only the IPv4 Address and prints that to the screen
Get-Content network_report.txt | Select-Object -Index 17 
#Removes the file after the script has finished searching for the IPv4
Remove-Item network_report.txt
#Command to test whether the network is sending and receiving packets
ping google.com
#Command to test whether the network is connected to the internet
Get-NetAdapter
