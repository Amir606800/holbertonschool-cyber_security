#!/bin/bash
grep -qE "smtpd_tls_security_level\s*=\s*(may|encrypt)" /etc/postfix/main.cf && grep "^smtpd_tls_security_level" /etc/postfix/main.cf || echo "STARTTLS not configured"
