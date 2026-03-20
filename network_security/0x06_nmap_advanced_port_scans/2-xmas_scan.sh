#!/bin/bash
sudo nmap -xS -p440,450 --open --packet-trace --reason $1
