#!/bin/bash

networkinfo=$(ifconfig)

network_info() {
	echo "$networkinfo"
}

cat output.txt

echo "$networkinfo" > output.txt

network_info

