#!/bin/bash
whois holbertonschool.com | awk -F":" '/Registrant|Admin|Tech/ {print $1 "," $2}' > holbertonschool.com.csv
