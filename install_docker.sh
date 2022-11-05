sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install curl -y

sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
sudo apt-cache policy docker-ce -y
sudo apt install docker-ce -y

sudo curl -L "https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
docker-compose --version

sudo usermod -aG docker ${USER}
su - ${USER}
id -nG
sudo usermod -aG docker ${USER}
sudo systemctl start docker