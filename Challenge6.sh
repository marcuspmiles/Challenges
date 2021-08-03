#!/bin/bash

#List to define a directory
allDirs=(uno)

#Function to echo that directory
dir_detec() {
 echo "$allDirs"
}
#While loop
while [ true ]
do
  echo %%%%%%Directory List%%%%%%
  dir_detec
  read -p 'Enter a dir from the list: ' userin
  if [[ $userin =~ "uno" ]]; then
  	echo Creating dir $userin
	mkdir $userin
	ls
  else
	echo Directory already exists
  fi

done
