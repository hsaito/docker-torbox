#!/bin/sh
tor --verify-config
service lighttpd start
service ssh start
if [ -f /var/lib/tor/hidden_service/hostname ]; then
	echo "Your hostname:"
	cat /var/lib/tor/hidden_service/hostname
else
	tor & sleep 1; killall tor ; echo "Your hostname:" ; cat /var/lib/tor/hidden_service/hostname
fi

tor
