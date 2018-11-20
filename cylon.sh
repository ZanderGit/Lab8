#!/bin/bash

a=0

for (( ; ; )); do
	
	while [ $a -lt 3 ]; do
		for (( i=0; i<4; i++ )); do
                	gpio write $i 0
        	done
        	gpio write $a 1
        	sleep .25
        	let a=a+1
        
	done

	while [ $a -gt 0 ]; do
		for (( i=0; i<4; i++ )); do
                	gpio write $i 0
        	done
        	gpio write $a 1
        	sleep .25
        	let a=a-1
        
	done
done



function clear {
	for (( i=0; i<4; i++ )); do
		echo "test"
		gpio write $i 0
	done
}
