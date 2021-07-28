#!/bin/bash
#welcome to my logininfo fetcher 
logininfo=$(last)

computer_logininfo() {
	echo "$logininfo"
}

computer_logininfo
