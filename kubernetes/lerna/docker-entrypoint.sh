#!/usr/bin/env bash

if [ "$1" = 'www' ]; then 
    cd /app/packages/www
    export NODE_ENV=production
    exec node ./.next/server
fi
if [ "$1" = 'api' ]; then
    cd /app/packages/api
    export NODE_ENV=production
    exec node start.js
fi
