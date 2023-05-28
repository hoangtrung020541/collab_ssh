#!/bin/bash#
# Setup public - private key
mkdir -p /content/.ssh
echo $1
FILE=/content/.ssh/authorized_keys
if test -f "$FILE"; 
then
    wget $1 -O /content/.ssh/temp
    cat /content/.ssh/temp >> /content/.ssh/authorized_keys
    rm /content/.ssh/temp
else
    wget $1 -O /content/.ssh/authorized_keys
fi

chmod 700 /content/.ssh
chmod 600 /content/.ssh/authorized_keys

# Download ngrok
FILE=/content/SSH/ngrok
if ! test -f "$FILE"; 
then
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
    sudo tar xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin
    rm ngrok-v3-stable-linux-amd64.tgz
fi

# Install SSH-Server
sudo apt update
sudo apt install openssh-server -y

# SSH Config
sudo echo "PermitRootLogin no" >> /etc/ssh/sshd_config
sudo echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
sudo echo "AuthorizedKeysFile /content/.ssh/authorized_keys" >> /etc/ssh/sshd_config
sudo echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config

sudo service ssh restart
