#!/bin/bash
echo -n "${1#\{xor\}}" | base64 --decode | perl -pe '$_=pack("C*", map {$_^0xA5} unpack("C*", $_))'
