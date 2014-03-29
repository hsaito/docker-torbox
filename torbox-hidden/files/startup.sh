#!/bin/sh
service lighttpd start
service ssh start
if [ -f /var/lib/tor/hidden_service/hostname ]; then
	echo "Your hostname:"
	cat /var/lib/tor/hidden_service/hostname
else
	sudo -u debian-tor tor & sleep 1; killall tor ; echo "Your hostname:" ; cat /var/lib/tor/hidden_service/hostname
fi

sudo -u debian-tor tor
