#!/bin/bash

function init_tun_interface(){
    # create the tunnel for the openvpn client

    mkdir -p /dev/net
    if [ ! -c /dev/net/tun ]; then
        mknod /dev/net/tun c 10 200
    fi
}

init_tun_interface

cd config/

openvpn --config conf.ovpn