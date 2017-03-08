#!/bin/bash

echo "======= START STEP-2-INSTALL-UTILITIES.SH $(date +"%r") ================="
echo " "
echo "BEGIN installing utilities"

echo "... Installing some common utilities ..."

# uncomment if you need these
# sudo apt-get -y install wget > /dev/null 2>&1
# sudo apt-get -y install curl > /dev/null 2>&1
# sudo apt-get -y install zip > /dev/null 2>&1
# sudo apt-get -y install unzip > /dev/null 2>&1
# sudo apt-get -y install debconf-utils > /dev/null 2>&1
# sudo apt-get -y install software-properties-common > /dev/null 2>&1

echo "... Installing OpenJDK ..."
sudo add-apt-repository -y ppa:openjdk-r/ppa > /dev/null 2>&1
sudo apt-get -y update > /dev/null 2>&1
sudo apt-get -y install openjdk-8-jdk > /dev/null 2>&1

echo "... Installing Mailcatcher ..."
# update to ruby 2
sudo apt-add-repository ppa:brightbox/ruby-ng > /dev/null 2>&1
sudo apt-get -y update > /dev/null 2>&1
sudo apt-get -y install ruby2.2 > /dev/null 2>&1
# install dependencies
sudo apt-get -y install build-essential ruby2.2-dev libsqlite3-dev > /dev/null 2>&1
# install mailcatcher 
sudo gem install mailcatcher > /dev/null 2>&1

echo "... END installing utilities."
echo " "
echo "====== FINISH STEP-2-INSTALL-UTILITIES.SH $(date +"%r") ================="
echo " "
