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
   $INSTALLPACKAGE p7zip-full
   $INSTALLPACKAGE dos2unix
   $INSTALLPACKAGE unzip
   $INSTALLPACKAGE git
   
   #Latest Nvidia 1080/1070driver as of 11-10-2018
   $INSTALLPACKAGE nvidia-390  
   $INSTALLPACKAGE ocl-icd-libopencl1
   $INSTALLPACKAGE nvidia-cuda-toolkit
   
   #John Specific
   sudo apt-get install build-essential libssl-dev
   
   $INSTALLPACKAGE gnupg2
   gpg2 --recv-keys "A70833229D040B4199CC00523C17DA8B8A16544F"
   curl -OO https://hashcat.net/files/hashcat-4.2.1.7z

   #Uncompress PWD Fie
   tar -I lbzip2 -xvf file.tar.bz2
   
   #Get passwdfile
   curl -OO https://www.scrapmaker.com/data/wordlists/dictionaries/rockyou.txt
   
   #John = https://github.com/magnumripper/JohnTheRipper
   
   reboot
#https://gist.github.com/koenrh/801766782fe65b279b436576d935d5d3
