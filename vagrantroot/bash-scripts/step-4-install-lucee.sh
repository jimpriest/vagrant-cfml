#!/bin/bash

# Links
# https://rorylaitila.gitbooks.io/lucee/content/vagrant.html

LUCEE_VERSION="5.1.1.065"
LUCEE_PASSWORD="password"

echo "=========== START STEP-3-INSTALL-LUCEE.SH $(date +"%r") ================="
echo " "
echo "BEGIN setting up Lucee ..."

if [ ! -d "/opt/lucee" ]; then
    
    # Don't download if we've already got it locally
    if [ ! -f "/vagrantroot/artifacts/lucee-$LUCEE_VERSION-pl0-linux-x64-installer.run" ]; then
        echo "... Downloading the Lucee installer, standby ..."
        wget --progress=bar:force lucee-$LUCEE_VERSION-pl0-linux-x64-installer.run http://cdn.lucee.org/downloader.cfm/id/179/file/lucee-$LUCEE_VERSION-pl0-linux-x64-installer.run
    fi

    echo "... Add execute permissions on the Lucee installer file ..."
    chmod u+x lucee-$LUCEE_VERSION-pl0-linux-x64-installer.run

    echo "... Start unattended Lucee installation ..."
    sudo ./lucee-$LUCEE_VERSION-pl0-linux-x64-installer.run --mode unattended --luceepass $LUCEE_PASSWORD

else
    echo "Lucee setup already, skipping"
fi



echo "... END setting up Lucee."
echo " "
echo "========== FINISH STEP-3-INSTALL-LUCEE.SH $(date +"%r") ================="
echo " "
