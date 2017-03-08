#!/bin/bash


echo "========================================================================="
echo "Some final clean up ..."

sudo apt-get -y update --fix-missing > /dev/null 2>&1
sudo apt-get -y autoremove > /dev/null 2>&1
sudo apt-get -y clean > /dev/null 2>&1

echo "... Restart Apache, post Lucee install ..."
sudo service apache2 restart > /dev/null 2>&1

echo " "
echo "$1"
echo " "
echo "========================================================================="
echo " "
echo "http://$2 ($3)"
echo " "
echo "Lucee Server/Web Context Administrators"
echo " "
echo "http://$2/lucee/admin/server.cfm"
echo "http://$2/lucee/admin/web.cfm"
echo " "
echo "Common Lucee admin password: password"
echo " "
echo "Apache web root is default /var/www/html"
echo "This directory is mapped to /webroot directory in this project (see Vagrantfile)"
echo "You can place your project code in this directory."
echo " "
echo "-------------------------------------------------------------------------"
echo " "
echo "Database Server Connection Info for External Connections "
echo " "
echo "Server: $4"
echo "Port: 3306"
echo "User: root"
echo "Password: password"
echo " "
echo "-------------------------------------------------------------------------"
echo " "
echo "Mailcatcher "
echo " "
echo "Point Lucee mail server at smtp://127.0.0.1:1025"
echo "Visit: http://$2:1080 to see sent mail"
echo " "
echo "========================================================================="
