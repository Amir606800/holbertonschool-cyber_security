#!/bin/bash
cat /etc/snmp/snmpd.conf | grep -vE "# " | grep "public"
