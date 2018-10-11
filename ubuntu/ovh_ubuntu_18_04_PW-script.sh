#! /bin/bash
 
# Placeholder
# Placeholder
 
# http://linuxcommand.org/wss0150.php
function error_exit
{
	echo "$1" 1>&2
	exit 1
} 
 
if [ `whoami` = root ]; then
   apt-get update
   
   INSTALLPACKAGE="apt-get install -y"
   
   sudo add-apt-repository ppa:graphics-drivers/ppa
   
   #Install Stuff
   
   
   #Latest Nvidia 1080/1070driver as of 11-10-2018
   $INSTALLPACKAGE nvidia-390  
   $INSTALLPACKAGE ocl-icd-libopencl1
   $INSTALLPACKAGE nvidia-cuda-toolkit
   
   reboot
