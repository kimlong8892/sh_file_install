cd ~
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
deb https://deb.nodesource.com/node_16.x focal main
deb-src https://deb.nodesource.com/node_16.x focal main
sudo apt -y install nodejs -y
node  -v