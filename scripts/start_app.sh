#!/bin/bash

# Set variables
reponame=catherinej-app
repodir=/home/ec2-user/${reponame}

# Start application
cd $repodir
systemctl start mongod
npm start
