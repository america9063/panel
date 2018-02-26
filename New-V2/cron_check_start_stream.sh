#! /bin/bash
#
# Author: Aysad Kozanoglu
#  email: aysadx@gmail.com 
#    web: http://aysad.pe.hu
#


mysql -u debian-sys-maint -p$(cat /etc/mysql/debian.cnf | grep password | awk '{print $3}' | uniq) -e "use iptv; select pid,id,streamurl from streams where status=1" | grep -v streamurl | while read line; 
do
	   d=$(date '+%Y-%m-%d %H:%M:%S')
	  id=$(echo $line | awk '{print $2}');
	   s=$(echo $line | awk '{print $3}');
	 pid=$(echo $line | awk '{print $1}'); 
	pidc=$(ps auxf | grep -v grep | grep ffmpeg | grep -c $pid);
	# -crf 28 -vcodec libx264 
      params="  -strict -2 -dn -crf 28  -user_agent ClientStreaming -acodec copy -vcodec copy  -hls_flags delete_segments -hls_time 10 -hls_list_size 8"
	if [ "0" == "$pidc" ]; 
	  then 
	#	echo "tod";
	rm -rf /usr/local/nginx/html/streaming/hl/${id}*
	newpid=$( su - www-data -c "ffmpeg -i $s ${params} /usr/local/nginx/html/streaming/hl/${id}_.m3u8 >> /tmp/start.log 2>&1 & echo $!")
	mysql -u debian-sys-maint -p$(cat /etc/mysql/debian.cnf | grep password | awk '{print $3}' | uniq) -e "use iptv; UPDATE streams SET pid=${newpid} WHERE id=${id} "
	echo $d" "$newpid" =>  startet => "$s >> /tmp/start.log	
	sleep 2
	fi;
done

