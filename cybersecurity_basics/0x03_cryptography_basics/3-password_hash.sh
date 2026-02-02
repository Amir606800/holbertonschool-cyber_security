#!/bin/bash
SALT=$(openssl rand -hex 8); printf "%s$SALT" "$1" | openssl dgst -sha512 > 3_hash.txt
