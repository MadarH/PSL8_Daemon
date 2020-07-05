#!/bin/bash

if ["`lsblk -o name | grep sdb1`"]; #Vefirication d'insertion de cle USB
then
	spd-say 'Cle USB est insere'; notify-send "Cle USB est insere" #effet sonore
	sleep 3s #Un delai pour le son 
	sudo mount /dev/sdb1 /mnt
	cd /mnt 
	CurrentDate=`date`
	echo "Cette cle USB a ete insere le $CurrentDate" > CurrentDate.txt
	spd-say 'Cle USB enleve'; notify-send "Cle USB enleve"
	sudo umount /dev/sdb1 /mnt
fi
