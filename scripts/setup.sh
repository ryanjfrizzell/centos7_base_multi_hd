#!/bin/bash
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant
yum install -y wget
yum install -y curl
yum groupinstall -y Development Tools
# Install vagrant key
echo 'Install vagrant SSH key'
mkdir -p /home/vagrant/.ssh
wget --no-check-certificate https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chmod 0700 /home/vagrant/.ssh
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
