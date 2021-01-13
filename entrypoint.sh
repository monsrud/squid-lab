#!/bin/sh
set -x

if [ -e /var/cache/squid/00 ]; then
    /usr/sbin/squid --foreground
else
    /usr/sbin/squid -z 
    /usr/sbin/squid --foreground
fi
