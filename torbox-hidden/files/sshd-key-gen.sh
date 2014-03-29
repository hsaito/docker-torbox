#!/bin/sh
# sshd-key-gen.sh
# post-apply script that properly manages ssh authentication keys
# Install in /var/radmind/postapply

SSHKEYGEN=/usr/bin/ssh-keygen

$SSHKEYGEN -q -t rsa  -f /etc/ssh/ssh_host_rsa_key -N "" \
-C "" < /dev/null > /dev/null 2> /dev/null
echo "Created /etc/ssh_host_rsa_key"

$SSHKEYGEN -q -t dsa  -f /etc/ssh/ssh_host_dsa_key -N "" \
-C "" < /dev/null > /dev/null 2> /dev/null
echo "Created /etc/ssh_host_dsa_key"

exit 0
