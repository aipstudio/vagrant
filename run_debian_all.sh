#!/bin/bash
sudo apt update
sudo apt install -y atop htop mc net-tools ntpdate lnav cifs-utils open-vm-tools

sudo cp /vagrant/sshd_config /etc/ssh/
sudo cp /vagrant/hosts /etc/hosts
sudo cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime

sudo service sshd reload

echo -e "1\n1" | sudo passwd root
#useradd lc -m
#echo -e "1\n1" | sudo passwd lc

sudo ifconfig
