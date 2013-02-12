#!/bin/bash

if [[ $1 && $2 ]]; then

	if [[ "$1" == "--detatch" && $3 ]]; then
		ACT="--device-disconnect"
		USB=$2
		VM=$3
	else
		ACT="--device-connect"
		USB=$1
		VM=$2
	fi

	prlsrvctl info | grep $USB | sed -e "s/^[^']*//g;s/'//g" | while read DEVICE
	do
		prlctl set $VM $ACT $DEVICE
	done
else
	echo 'usage: prlctl-usb [--detatch] <device-id> <vm-name|vm-id>'
fi
