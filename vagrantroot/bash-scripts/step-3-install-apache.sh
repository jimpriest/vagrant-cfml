#!/bin/bash
# lucee standalone assumes apache is installed and will install apache connector by default

echo "========== START STEP-4-INSTALL-APACHE.SH $(date +"%r") ================="
echo " "
echo "BEGIN installing and configuring Apache ..."

if [ ! -d "/etc/apache2" ]; then
    echo "... Installing Apache ..."
    sudo apt-get -y install apache2 > /dev/null 2>&1
fi

echo "... Configuring Apache ..."
sudo cp /vagrant/configs/dir.conf /etc/apache2/mods-enabled/dir.conf

# Note: webroot is default /var/www/html and shared in 
# vagrantfile configuration

echo "... End installing and configuring Apache."
echo " "
echo "========= FINISH STEP-4-INSTALL-APACHE.SH $(date +"%r") ================="
echo " "
