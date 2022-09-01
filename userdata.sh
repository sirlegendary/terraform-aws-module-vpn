#! /bin/bash

sudo apt-get update

curl -O https://raw.githubusercontent.com/angristan/wireguard-install/master/wireguard-install.sh
chmod +x wireguard-install.sh
mv wireguard-install.sh /home/ubuntu/

curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
mv openvpn-install.sh /home/ubuntu/