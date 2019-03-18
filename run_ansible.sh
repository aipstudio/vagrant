#!/bin/bash
sudo apt-get update
sudo apt-get install -y atop htop mc net-tools ntpdate lnav cifs-utils ansible sshpass python-pip

sudo cp /vagrant/sshd_config /etc/ssh/
sudo cp /vagrant/hosts /etc/hosts
sudo cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime

sudo service sshd reload

echo -e "1\n1" | sudo passwd root

mkdir /ansible
sudo mount //10.55.0.160/ansible /ansible -t cifs -o username=ansible,password=ansible,domain=IT-1
echo '//10.55.0.160/ansible /ansible cifs username=ansible,password=ansible,domain=IT-1 0 0' >> /etc/fstab

sudo ifconfig
