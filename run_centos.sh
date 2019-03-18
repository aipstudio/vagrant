#!/bin/bash
sudo yum install -y epel-release
sudo yum install -y mc htop atop net-tools

sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

sudo cp /vagrant/sshd_config /etc/ssh/
sudo service sshd reload

echo -e "1\n1" | sudo passwd root
