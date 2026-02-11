#!/bin/bash
nmap -sV --script ssl-enum-ciphers "$1"
