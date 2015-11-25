#! /usr/bin/env bash

echo -e "\n--- Bootstrap now... ---\n"
# sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions

echo -e "\n--- Install nano ---\n"
sudo yum install nano -q -y

echo -e "\n--- Install wget ---\n"
sudo yum install wget -y -q

echo -e "\n--- To Enable EPEL Repository ---\n"
sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo yum -y update

echo -e "\n--- Install ansible ---\n"
sudo yum install ansible -y -q

echo -e "\n--- Run Ansible development playbook ---\n"
cd /home/vagrant/sync/ansible && ansible-playbook -i hosts development.yml
