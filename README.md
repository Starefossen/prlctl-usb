prlctl-usb
==========

Parallels Desktop command line utility for connecting and disconnecting USB devices to a given virtual machine.

## Preconditions

1. `Paralells tools` has to be installed on the virtual machine.

Tested with Ubuntu Server 10.04 LTS and 12.04 LTS.

## Usage

	prlctl-usb [--detatch] <device-id> <vm-name|vm-id>
	
### Detach
Add the `--detatch` flag in order to detach the device from the machine.

### Device name
This is the name of the device to attach, you can list all devices with the following command.

	prlsrvctl info | grep USB
	
The device-id can be obtained by running the following command. 
	
	prlsrvctl info | grep USB | sed -e "s/^[^']*//g;s/'//g"
	
### Make a shortcut cmd

Make a shortcut to your favorite virtual machine by adding an alias to you `.bash_profile`

	$ alias prlctl-usb=/PATH/TO/./prlctl-usb.sh