manoj=$1

echo "creating containers $manoj in cont.sh"

sleep 2;

for i in `seq $manoj`
do
	echo "creating www.month $i containres"
	sudo docker run -it --name www.month $i -d mano8888/concentrix /bin/bash
	sleep 1

	echo "www.month$i containers has been created"
done
