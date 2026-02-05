#!/bin/bash
sudo adduser "$1"
echo "$1:$2" | chpasswd
