#!/bin/bash

bitPattern=0

for (( ; ; )); do
	bitPattern=$RANDOM
	./setBits.sh $bitPattern
	
	sleep .25	


done
