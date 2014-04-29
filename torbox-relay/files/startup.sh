#!/bin/sh
service tor start
sleep 1
tail -f /var/log/tor/log
