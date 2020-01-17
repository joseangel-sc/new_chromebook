sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common -y

curl -fsSL https://download.docker.com/linux/$(lsb_release -is | tr \"[:upper:]\" \"[:lower:]\")/gpg | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] https://download.docker.com/linux/$(lsb_release -is | tr \"[:upper:]\" \"[:lower:]\") $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list'

sudo apt-get update
sudo apt-get install docker-ce -y
me=`whoami`
sudo usermod -aG docker ${me}
