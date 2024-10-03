#!/bin/bash

# Set variables
reponame=catherinej-app
repodir=/home/ec2-user/${reponame}

sudo chown -R ec2-user:ec2-user $repodir
sudo chmod 777 $repodir

# Navigate into our working directory
cd $repodir

# add npm and node to path
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
source ~/.nvm/nvm.sh
sudo yum install nodejs npm -y
sudo nvm install node
sudo nvm use node
sudo npm install
sudo npm i nodemon
cd mongodb_install
sudo mv mongodb-org-8.0.repo /etc/yum.repos.d/
cd ..
sudo yum install -y mongodb-org
cd $repodir
sudo npm i nodemon
sudo systemctl start mongod
