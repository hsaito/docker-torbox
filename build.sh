#!/bin/bash

if [[ $1 == "" ]] ; then
        echo "Needs user name"
        exit 2
fi

cd torbox ; docker build --no-cache=true -t $1/torbox . ; cd ..
cd torbox-relay ; docker build -t $1/torbox-relay . ; cd ..
cd torbox-hidden ; docker build -t $1/torbox-hidden . ; cd ..
cd torbox-hidden-apache ; docker build -t $1/torbox-hidden-apache .; cd ..
