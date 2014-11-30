#!/bin/sh

if [[ $1 == "" ]] ; then
        echo "Needs username"
        exit 2
fi

cd torbox ; docker build --no-cache=true -t $1/torbox . ; cd ..
cd torbox-relay ; docker build -t $1/torbox-relay . ; cd ..
cd torbox-hidden ; docker build -t $1/torbox-hidden . ; cd ..
