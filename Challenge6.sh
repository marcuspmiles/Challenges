#!/bin/bash

allDirs=(uno)

dir_detec() {
 echo "$allDirs"
}

while [ true ]
do
  echo %%%%%%Directory List%%%%%%
  dir_detec
  read -p 'Enter a dir from the list: ' userin
  if [[ $userin =~ "uno" ]]; then
  	echo Creating dir $userin
	mkdir $userin
	ls
	echo Your dir has been created
  else
	echo Directory already exists
  fi

done
