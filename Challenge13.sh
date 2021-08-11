#!/bin/bash

#function to perform domain info retrieval 
domain_func() {
  echo %%%%%% WHO IS %%%%%%
  whois $domain
  echo %%%%%% DIG %%%%%%
  dig $domain
  echo %%%%%% HOST %%%%%%
  host $domain
  echo %%%%%% NSLOOKUP %%%%%%
  nslookup $domain
}
#user input
echo %%% DOMAIN INFORMATION RETRIEVER %%%
read -p 'Please type a domain: ' domain
#outputs function to a text file
domain_func > domainoutput.txt
echo %% YOUR INFORMATION HAS BEEN OUTPUTTED TO A FILE NAMED "domainoutput.txt" %%

