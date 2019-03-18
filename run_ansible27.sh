#!/bin/bash
sudo apt-get update
sudo apt-get install -y atop htop mc net-tools ntpdate lnav cifs-utils ansible sshpass python-pip

sudo cp /vagrant/sshd_config /etc/ssh/
sudo cp /vagrant/hosts /etc/hosts
sudo cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime

sudo service sshd reload

echo -e "1\n1" | sudo passwd root

mkdir /ansible
sudo mount //10.55.0.160/ansible /ansible -t cifs -o username=ansible,password=ansible,domain=IT-PRO,vers=2.0
echo '//10.55.0.160/ansible /ansible cifs username=ansible,password=ansible,domain=IT-PRO,vers=2.0 0 0' >> /etc/fstab

wget http://ftp.us.debian.org/debian/pool/main/a/ansible/ansible_2.7.5+dfsg-1~bpo9+1_all.deb
dpkg -i *
rm *.deb
pip install routeros

sudo ifconfig
