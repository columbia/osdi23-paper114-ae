#!/bin/bash                                                                                                                                                                       

SRV=$1

echo "Grab results for $SRV" 

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $SRV "cd kvmperf/localtests; cat hackbench.txt; rm hackbench.txt" >> hackbench.txt
