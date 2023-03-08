#!/bin/bash

wget https://github.com/anubhavrouter/routerd-release-binary/raw/main/router_binary_release1.tar

cd ~

mkdir router-binary

tar -xvf router_binary_release1.tar -C router-binary

#cd router-binary
echo $PWD
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD/router-binary/libs/' >> ~/.bashrc
. ~/.bashrc
echo $LD_LIBRARY_PATH
sudo cp router-binary/routerd /usr/bin/
