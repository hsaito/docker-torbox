#!/bin/sh
service lighttpd start

if [ -f /var/lib/tor/hidden_service/hostname ]; then
	echo "Your hostname:"
	cat /var/lib/tor/hidden_service/hostname
else
	service tor start & sleep 1; service tor stop ; echo "Your hostname:" ; cat /var/lib/tor/hidden_service/hostname
	echo "Regenerating server keys..."
	chmod +x /sshd-key-gen.sh ; /sshd-key-gen.sh
	rm /sshd-key-gen.sh
fi
service ssh start
service tor start
sleep 1
tail -f /var/log/tor/log
