#!/bin/bash 
mkdir router-binary
wget https://github.com/anubhavrouter/routerd-release-binary/raw/main/router_binary_release1.tar
tar -xvf router_binary_release1.tar -C router-binary
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/router-binary/libs/" >> ~/.bashrc
source ~/.bashrc
sudo cp router-binary/routerd /usr/bin/
exec bash
rm router_binary_release1.tar
