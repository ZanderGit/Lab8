#1/bin/bash
chmod 755 setBits.sh


d2b=$(echo "obase=2;$1" | bc)
d2b=$(echo "$d2b" | rev)

#for (( i = 0; i < 4; i++ )); do
#	gpio write $i 0
#done

for (( i = 0; i < 4; i++ )); do
	if [ "${d2b:$i:1}" == "1" ]; then
		gpio write $i 1
	else
		gpio write $i 0
	fi
done

