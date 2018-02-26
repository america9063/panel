#! /bin/bash
#
# coded by Aysad Kozanoglu
# email : aysadx@gmail.com
# web: http://onweb.pe.hu
# HLSSERVER installer Core script
#


dist=$(lsb_release -si)
arch=$(uname -m)
sysuser="hlsserver"
userhome="/home/hlsserver.com"

clear
echo "updating packagelist - please wait"
apt-get update > /dev/null 2>&1

apt-get install dialog > /dev/null 2>&1

echo 2 | dialog --title "HLSSERVER PANEL installer" --gauge "please wait..." 8 50

if [[ "$arch" == "x86_64" ]];then
	source install-x86_64.sh
fi

if [[ "$arch" == "i686" ]];then
        source install-i686.sh
fi
echo ""
userdel $sysuser > /dev/null 2>&1
rm -rf $userhome > /dev/null 2>&1
/usr/sbin/useradd -s /sbin/nologin -U -d $userhome -m $sysuser > /dev/null
/etc/init.d/apache2 stop  > /dev/null 2>&1
apt-get purge remove apache -y  > /dev/null 2>&1
apt-get remove apache* -y  > /dev/null 2>&1

echo 85 | dialog --title "HLSSERVER PANEL installer" --gauge "Installing webserver - please wait..." 8 50

source install-webserver.sh
