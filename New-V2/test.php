<?php
$link="http://iptvfree1.com:6969/live/buyiptvrestream61/y4acUxaZMn/189.ts";
$link="http://93.115.26.29:8000/SKY%20SPORT%20NEWS?u=test:p=1234";
$pid=shell_exec('ffmpeg -y -probesize 15000000 -analyzeduration 12000000 -i '.$link.' -user_agent ClientStreaming -strict -2 -dn -acodec copy -vcodec copy -crf 29 -hls_flags delete_segments -hls_time 10 -hls_list_size 8 /usr/local/nginx/html/streaming/hl/test.m3u8 > /dev/null & echo $!');
 echo $pid;

?>
