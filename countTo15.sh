#!/bin/bash
i=0

while [ $i -lt 17 ]; do
	./setBits.sh $i

	sleep 1

	let i=i+1
done
