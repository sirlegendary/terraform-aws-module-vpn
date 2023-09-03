#! /bin/bash

sudo apt-get update

curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
mv openvpn-install.sh /home/ubuntu/