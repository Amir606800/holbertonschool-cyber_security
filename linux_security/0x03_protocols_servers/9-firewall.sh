#!/bin/bash
iptables -A INPUT -p tcp --dport 22 -j ACCEPT && iptables -A INPUT -j DROP
iptables -L INPUT | grep -E "ACCEPT|DROP"
