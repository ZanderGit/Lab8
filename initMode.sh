#!/bin/bash
chmod 755 initMode.sh

i=0

while [ $i -lt 4 ]; do
	gpio mode $i out
	gpio write $i 0
	let i=i+1
	
done

