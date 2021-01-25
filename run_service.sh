#!/bin/bash

function init_tun_interface(){
    mkdir -p /dev/net
    if [ ! -c /dev/net/tun ]; then
        mknod /dev/net/tun c 10 200
    fi
}
init_tun_interface

cd config/

openvpn --data-ciphers AES-128-CBC --config conf.ovpn 
