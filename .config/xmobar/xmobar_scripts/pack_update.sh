#! /bin/bash

PASSWORD="$(echo 'U2FsdGVkX1/IMmZqpQZC05wpGjWJOVBhDP2d+GXpEcI=' | openssl enc -aes-256-cbc -md sha512 -a -d -pbkdf2 -iter 100000 -salt -pass pass:'dina2019')"
UPGRADE_LIST="$(echo ${PASSWORD} | sudo -S pacman -Syup | wc -l)"
BACK_PID=$!
wait $BACK_PID

FG='#87CEEB'
BG='#2B2B2B'
GREEN='#00FF00'
YELLOW='#FFFF00'
RED='#FF0000'

if [ $# -gt 0 ] && [ $1 != "" ]; then
	FG=$1
fi
if [ $# -gt 1 ] && [ $2 != "" ]; then
	BG=",$2:0"
fi
if [ $# -gt 2 ] && [ $3 != "" ]; then
	GREEN=$3
fi
if [ $# -gt 3 ] && [ $4 != "" ]; then
	YELLOW=$4
fi
if [ $# -gt 4 ] && [ $5 != "" ]; then
	RED=$5
fi

if [ $UPGRADE_LIST -ge 500 ]; then
	FG=$RED
elif [ $UPGRADE_LIST -ge 250 ]; then
	FG=$YELLOW
fi

echo "<fc=$FG$BG>$UPGRADE_LIST updates</fc>"
