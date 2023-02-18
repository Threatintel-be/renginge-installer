sudo apt update && sudo apt upgrade -y && sudo apt install git -y
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo mkdir -p /opt/rengine
sudo git clone https://github.com/yogeshojha/rengine /opt/rengine
sudo curl -fsSL https://get.docker.com/ -o get-docker.sh && sudo sh get-docker.sh
sudo sed -i 's/go1.18.2.linux-amd64.tar.gz/go1.19.4.linux-amd64.tar.gz/g' /opt/rengine/web/Dockerfile
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
sudo sed -i 's/RUN pip3 install --upgrade setuptools pip/#RUN pip3 install --upgrade setuptools pip/g' /opt/rengine/web/Dockerfile
sudo sed -i 's/  pip3 install -r/RUN pip3 install -r/g' /opt/rengine/web/Dockerfile
