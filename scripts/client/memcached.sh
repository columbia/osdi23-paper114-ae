#!/bin/bash

SERVER=$1
REPTS=${2-10}

for i in `seq 1 $REPTS`; do
	./memtier_benchmark/memtier_benchmark --hide-histogram -p 11211 -P memcache_binary -s $SERVER 2>&1 | \
		tee >(grep 'Totals' | awk '{ print $2 }' >> memcached.txt)
done

