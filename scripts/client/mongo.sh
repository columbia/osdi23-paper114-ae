#!/bin/bash                                                                                                                                                                       

SRV=$1

YCSB_PATH=./ycsb-0.17.0
YCSB=$YCSB_PATH/bin/ycsb

$YCSB run mongodb -s -P $YCSB_PATH/workloads/workloada -p "mongodb.url=mongodb://$SRV:27017/ycsb3" -threads 16 | tee >(grep "Throughput" | awk '{ print $3 }' >> mongo.txt)
