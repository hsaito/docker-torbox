#!/bin/sh
cd torbox ; docker build --no-cache=true -t hsaito/torbox . ; cd ..
cd torbox-relay ; docker build -t hsaito/torbox-relay . ; cd ..
cd torbox-hidden ; docker build -t hsaito/torbox-hidden . ; cd ..
cd torbox-hidden-apache ; docker build -t hsaito/torbox-hidden-apache .; cd ..
