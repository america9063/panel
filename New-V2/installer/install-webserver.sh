
#! /bin/bash
#
# coded by Aysad Kozanoglu
# email : aysadx@gmail.com
# web: http://onweb.pe.hu
# HLSSERVER installer webserver part script
#

link="http://nginx.org/download/nginx-1.10.1.tar.gz"


echo 79 | dialog --title "HLSSERVER PANEL installer" --gauge "webserver package sequence 1..." 8 50

wget -q -O /tmp/nginx.tar.gz $link

tar xzf /tmp/nginx.tar.gz -C /tmp/

rm /usr/bin/nginx_hls > /dev/null 2>&1

cd /tmp/nginx-1.10.1/

echo 85 | dialog --title "HLSSERVER PANEL installer" --gauge "installing webserver  - please wait..." 8 50

. /tmp/nginx-1.10.1/configure > /dev/null 2>&1  && make > /dev/null 2>&1 && make install > /dev/null 2>&1 

ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx_hls

echo 99 | dialog --title "HLSSERVER PANEL installer" --gauge "all commands done ..." 8 50
sleep 2
dialog --msgbox "Done! - by Aysad Kozanoglu" 5 50

