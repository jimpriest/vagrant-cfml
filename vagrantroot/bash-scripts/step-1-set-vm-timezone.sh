#!/bin/bash
echo "========================================================================="
echo "BEGIN Set VM timezone and perform some cleanup pre-install ..."

echo $1 | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata

echo "... Do an update / upgrade ..."
sudo apt-get -y update --fix-missing > /dev/null 2>&1
sudo apt-get -y upgrade > /dev/null 2>&1
sudo apt-get -y dist-upgrade > /dev/null 2>&1
sudo apt-get -y update > /dev/null 2>&1

echo "... END Set VM timezone and perform update/upgrade pre-install."
echo " "
