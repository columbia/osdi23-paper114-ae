#!/bin/bash

echo "Downloading YCSB"
curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar xfvz ycsb-0.17.0.tar.gz
sed -i '1 s_$_2_' ycsb-0.17.0/bin/ycsb
