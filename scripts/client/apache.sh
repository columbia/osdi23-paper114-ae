#!/bin/bash                                                                                                                                                                       

SRV=$1
REPTS=${2-4}

#echo "Measuring performance of $SRV"

# requires that apache is installed with the gcc manual in place
NR_REQUESTS=5000
RESULTS=apache.txt
ab=/usr/bin/ab
CMD="$ab -s 120 -n $NR_REQUESTS -c 100 https://$SRV/gcc/index.html"

for i in `seq 1 $REPTS`; do
        $CMD | tee >(grep 'Requests per second' | awk '{ print $4 }' >> $RESULTS)
done
