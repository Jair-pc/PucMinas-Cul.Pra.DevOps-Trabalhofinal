#!/bin/bash
sudo apt-get update
sudo apt-get install unzip
sudo apt-get install -y curl wget nfs-common
sudo mkdir -p /mnt/website && sudo chown ubuntu:ubuntu -R /mnt/website
wget -r http://www.layouts-templates.com/download/pt/template106.zip
sudo cp template106.zip /mnt/website
unzip template106.zip
sudo mount mv -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-08017f0a0aac24943.efs.us-east-1.amazonaws.com:/ .
sudo curl -fsSL https://get.docker.com | bash
sudo docker run --name website-nginx -v /mnt/website:/usr/share/nginx/html:ro -p 80:80 -d nginx