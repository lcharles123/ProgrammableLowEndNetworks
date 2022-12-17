#!/bin/sh
#ubuntu 16
#python2


git clone https://github.com/lcharles123/ProgrammableLowEndNetworks.git
cd ProgrammableLowEndNetworks

wget https://raw.githubusercontent.com/p4lang/tutorials/master/vm/root-bootstrap.sh
wget https://raw.githubusercontent.com/p4lang/tutorials/master/vm/user-bootstrap.sh
sed -i '17s/git clone git:\/\/github.com\/mininet\/mininet mininet/git clone https:\/\/github.com\/mininet\/mininet mininet/' user-bootstrap.sh

#para o protobuf
sudo apt-get install autoconf automake libtool curl make g++ unzip

#linha 36
sudo apt-get install -y python-setuptools

#gRPC
apt-get install build-essential libgflags-dev libgtest-dev clang libc++-dev
# upgrade pip to install grpcio
curl -fsSL -O https://bootstrap.pypa.io/pip/2.7/get-pip.py
python get-pip.py --no-python-version-warning && rm -f get-pip.py
python -m pip install grpcio
python -m pip install grpcio-tools

#apos make run_dep_checks
apt install libc-ares-dev libz-dev  libssl-dev ntp cmake


. user-bootstrap.sh

. root-bootstrap.sh


