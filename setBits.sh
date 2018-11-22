#1/bin/bash
chmod 755 setBits.sh


n=$1


for (( i = 0; i < 4; i++ )); do

	a=$(echo $((n >> i)))
	a=$(echo $((a & 1)))
	gpio write $i $a

done

