#! /usr/bin/env bash

echo -e "\n--- Bootstrap now... ---\n"

# Use single quotes instead of double quotes to make it work with special-character passwords
PROJECTFOLDER='hrorganizer'

# create project folder
sudo mkdir /var/www/html/${PROJECTFOLDER}