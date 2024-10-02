#!/bin/bash

# Set variables
reponame=catherinej-app
repodir=/home/ec2-user/${reponame}

# Start application
cd $repodir
npm i nodemon
systemctl start mongod
npm start
