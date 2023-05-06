#!/bin/bash


set -x
sudo rm -rf package-lock.json
sudo npm i
sudo npm i pm2@latest -g
sudo /usr/bin/pm2 kill
sudo /usr/bin/pm2 start index.js
