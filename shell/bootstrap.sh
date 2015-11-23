#! /usr/bin/env bash

echo -e "\n--- Bootstrap now... ---\n"

echo -e "\n--- To Enable EPEL Repository ---\n"
sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo yum -y update

echo -e "\n--- Install ansible ---\n"
sudo yum install ansible -y -q
