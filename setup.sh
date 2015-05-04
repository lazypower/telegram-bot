#!/bin/bash

set -e

apt-get update
apt-get install -y squid-deb-proxy-client
apt-get install -y libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git curl python-pip

pip install google-api-python-client python-gflags


useradd -m ubuntu
echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/tg-users


export HOME=/home/ubuntu
cd $HOME
sudo -u ubuntu ssh-agent /bin/bash

sudo -u ubuntu git clone https://github.com/chuckbutler/telegram-bot.git
cd /home/ubuntu/telegram-bot
./launch.sh install
