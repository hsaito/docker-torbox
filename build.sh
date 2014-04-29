#!/bin/sh
cd torbox ; docker build -t hsaito/torbox . ; cd ..
cd torbox-relay ; docker build -t hsaito/torbox-relay . ; cd ..
cd torbox-hidden ; docker build -t hsaito/torbox-hidden . ; cd ..
