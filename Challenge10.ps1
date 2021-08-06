#Challenge 10 Script

#Lists all processes from the top ordered by most CPU consumption
Get-Process | Sort-Object CPU -Descending
#Lists all processes from the top ordered by highest ID#
Get-Process | Sort-Object Id -Descending
#Lists all processes from the top ordered by working set#
Get-Process | Sort-Object WorkingSet -Descending 
#I love web vulnerabilites & web hacking! --- Starts the webpage
Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/" 
#Loop to open the above webpage 10 times!
for ($loop = 1; $loop -le 10 ; $loop++) { Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/"}
#Stops process by PID
Stop-Process -Id 12164 -Confirm -PassThru
