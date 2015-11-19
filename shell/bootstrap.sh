#! /usr/bin/env bash

echo -e "\n--- Bootstrap now... ---\n"

echo -e "\n--- Install nano ---\n"
sudo yum install nano -q -y

echo -e "\n--- Install wget ---\n"
sudo yum install wget -y -q

echo -e "\n--- To Enable EPEL Repository ---\n"
#sudo yum install epel-release -y -q

# sudo wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
# sudo rpm -ivh epel-release-7-5.noarch.rpm

echo -e "\n--- Install ansible ---\n"
#sudo yum install ansible -y -q