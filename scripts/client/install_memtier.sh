#!/bin/bash

git clone https://github.com/RedisLabs/memtier_benchmark.git --branch v1.2.11
pushd memtier_benchmark
autoreconf -ivf
./configure
make
popd
