#!/usr/bin/env bashio
set -e

DOMAIN=$(bashio::config 'tunel_host')
PORT=$(bashio::config 'port')
URS=$(bashio::config 'username')
PWD=$(bashio::config 'secret')


# Prepare config file
sed -i "s#%%DOMAIN%%#$DOMAIN#g" config/conf.ovpn
sed -i "s#%%PORT%%#$PORT#g" config/conf.ovpn

sed -i "s#%%URS%%#$URS#g" config/passwd
sed -i "s#%%PWD%%#$PWD#g" config/passwd

exec ./run_service.sh