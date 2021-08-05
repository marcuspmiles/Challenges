Write-Host "My PowerShell Challenge 9 Script"

$now = Get-Date
$startdate = $now.AddDays(1)
#Grabs all system logs within 24 hours and exports them to a text file
$el = Get-EventLog -LogName System -After $startdate
$el | Export-Csv last_24.txt
#Grabls all system error logs and exports them to a text file
$e2 = Get-EventLog -LogName System -EntryType Error
$e2 | Export-Csv errors.txt
#Prints all system logs with the ID of 16
Get-EventLog -LogName System -InstanceId 16 
#Prints the newest 20 system logs
Get-EventLog -LogName System -Newest 20
#Prints all sources of the newest 500 entries from the system event log
$sources = Get-EventLog -LogName System -Newest 500
$sources | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending
