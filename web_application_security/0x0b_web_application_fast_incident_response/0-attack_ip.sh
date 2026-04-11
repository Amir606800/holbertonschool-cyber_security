#!/bin/bash
grep -oE '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' $1 | sort | uniq -c | sort -rn | head -1 | awk '{print $2}'
