#!/bin/sh

# get latest package lists
apt-get update
#add and update repos
add-apt-repository "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
add-apt-repository universe
#update keys
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

#Install Google Chrome
echo
echo "Installing Chrome"
echo
apt-get -y install libxss1 libgconf2-4 libappindicator1 libindicator7
apt-get install google-chrome-stable
