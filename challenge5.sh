#!/bin/bash

processes=$(ps) 

computer_processes() { 
  echo "$processes"
} 
#Loop to restart the program
while [ true ]
do
  computer_processes
  read -p 'enter a PID: ' usevar
  echo
  echo killing the process with PID $usevar 

  kill $usevar 
  echo "Type ctrl+C to quit"
done







