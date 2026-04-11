#!/bin/bash
grep -oE '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' logs.txt | sort | uniq -c | sort -rn
