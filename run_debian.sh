#!/bin/bash
#sudo apt-get update
#sudo apt-get install -y atop htop mc net-tools ntpdate

sudo cp /vagrant/sshd_config /etc/ssh/
sudo cp /vagrant/hosts /etc/hosts
sudo cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime

sudo service sshd reload

echo -e "1\n1" | sudo passwd root

sudo ifconfig
