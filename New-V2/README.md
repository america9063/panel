# HLSSERVER Live streamig Panel 
## Features:
- Maas start and stop trancode Streaming 
- Streaming and restreaming (authentication, m3u8)
- Manage users (overview, add, edit, delete, enable, disable)
- Manage categories (overview, add, edit, delete)
- Manage streams (overview, add, edit, delete,start,stop)
- Manage settings (configuration)
- Autorestart (cron_check_start_stream.sh need to set manual)
- Last IP connected
- play stream
- Playlist import
- Limit streams on users
- IP Block
- predefined transcode profiles

## Security fixes:
- playlist link parameter for password md5 encrypted
- form dashboard download playlist for user seperatly with own usename as filename - password crypted
- playlist content links password crypted 

## defaults
- Default login: user: hlsserver.com / pass: admin
  - Add user
  - Add stream and use defined transcode profile 1 called **Default 1**
- You can use it also in proxy mode, but that depends on how you want to use it.
- The most stable way is using transcode profile: **Default 1** without proxy mode ticket

##changes
playlist link to download m3u or e2 files changed to 

changed with rewrite in nginx
http://ipadress:8000/plist/<username>/<md5pass>/m3u

live stream link changed to 
http://ipadress:10101/live/<username>/<md5pass>/stream

#cron
*/5 * * * * php /usr/local/nginx/html/streaming/cron_check_start_stream.sh

#functions.php
a lot of things changed

#playlists
only m3u8 and e2 

## to do 
- change the ip of the server, path of ffmpeg and ffprobe  above panel men� > settings
- install installer/install-hlsserver.sh
- cron_check_start_stream.sh
- mysqldump restore
- update admins set password="MD5hash" where username="admin";
- nginx.conf
- set chmod 777 for cache and hl
- edit config.php to change the webpath
- download https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz
- panel settings > web port and server ip


Aysad Kozanoglu
