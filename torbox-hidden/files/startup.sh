#!/bin/sh
service apache2 start
service ssh start
echo "Your hostname:"
cat var/lib/tor/hidden_service/hostname
tor
