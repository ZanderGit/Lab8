#!/bin/bash


function clear {
        for (( i=0; i<4; i++ )); do
                gpio write $i 0
        done
}


for (( ; ; )); do
	
	a=0
	while [ $a < 4 ]; do
		clear
        	gpio write $a 1
        	sleep 1
		echo $a
		let a=a+1    
	done
	
	c=4
	while [ $c > -1 ]; do
		clear
        	gpio write $c 0
        	sleep 1
		echo $c
        	let c=c-1
        done
done



function clear {
	for (( i=0; i<4; i++ )); do
		gpio write $i 0
	done
}
