#!/bin/bash

# Set variables
reponame=catherinej-app
repodir=/home/ec2-user/${reponame}

# Install dependencies
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[d-7ZUB2MWI6][stdout][ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
source ~/.bashrc
yum install npm
nvm install node
nvm use node
npm install
cd $repodir
npm i nodemon
cd mongodb_install
mv mongodb-org-8.0.repo /etc/yum.repos.d/
cd ..
yum install -y mongodb-org
