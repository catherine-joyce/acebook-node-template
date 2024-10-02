#!/bin/bash

# Set variables
reponame=catherinej-app
repodir=/home/ec2-user/${reponame}

# Install dependencies
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install 18
nvm use 18
npm install
cd $repodir
npm i nodemon
cd mongodb_install
mv mongodb-org-8.0.repo /etc/yum.repos.d/
cd ..
yum install -y mongodb-org
