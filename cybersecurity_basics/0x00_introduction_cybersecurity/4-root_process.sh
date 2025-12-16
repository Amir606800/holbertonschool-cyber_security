#!/bin/bash
ps aux -U "$1" | grep -vE ' 0 +0'
