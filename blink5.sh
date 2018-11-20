#1/bin/bash
chmod 755 blink5.sh

i=0
LED=0

while [ $i -lt 5 ]; do


	while [ $LED -lt 4 ]; do
		gpio write $LED 1
		let LED=LED+1
	done

        sleep 1
        
	while [ $LED -gt  -1 ]; do 
        	gpio write $LED 0
		let LED=LED-1
        done
        sleep 1
        let i=i+1
        
done
