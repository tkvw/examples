#!/usr/bin/env bash

printenv
if [ "$1" = 'api' ]; then
    cd ./api
    exec node start.js
fi
if [ "$1" = 'client' ]; then 
    cd ./client
    exec node ./.next/server
fi