#! /usr/bin/env bash

export DEFAULT_DIR_FILE=/mnt/bitLocker

Umount (){
	echo "Desmontando o systemFile ..."
	umount $DEFAULT_DIR_FILE
	if [ $? == 0 ]
	then
		sleep 1
		echo "Desmontado com sucesso :)"
		exit 0 
	else
		sleep 1
		echo "Falha na desmontagem :("
		exit -1
	fi
}

Umount

