#!/bin/bash
grep -oE '"(GET|POST|PUT|DELETE|PATCH) [^ ]+' $1 | awk '{print $2}' | sort | uniq -c | sort -rn | head -1 | awk '{print $2}'
