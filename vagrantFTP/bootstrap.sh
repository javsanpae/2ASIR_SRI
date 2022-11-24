#!/usr/bin/env bash

# Install VSFTPD Server
apt-get install -y vsftpd



# Create a backup file and copy file with our configs
if ! [-e /etc/vsftpd.conf.bak]
then
    cp -v /etc/vsftpd.conf /etc/vsftpd.conf.bak
fi

cp -v /vagrant/vsftpd.conf /etc/


# Create the FTP folder with an example file.
mkdir -p /srv/ftp
echo "ANONYMOUS DIRECTORY" > /srv/ftp/README.md


# Restart service and check its status
systemctl restart vsftpd
systemctl status vsftpd