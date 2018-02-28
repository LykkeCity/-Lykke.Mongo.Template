#!/bin/bash

# UPDATE
apt-get update
apt-get upgrade -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo apt-get install -y docker-ce
sudo apt-get install -y docker-compose

# FORMAT DISK
fdisk /dev/sdc <<EOF
n
p
1


w
EOF

sudo mkfs -t ext4 /dev/sdc

sudo -i blkid


mkdir ~/Docker-Compose
mkdir ~/Docker-Compose/Mongo
