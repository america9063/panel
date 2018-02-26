<?php
#
# author: Aysad Kozanoglu
#  email: aysadx@gmail.com
#    web: http://aysad.pe.hu
#
include ("dbclass.php");


function generatEginxConfPort(){
return true;
}

function redirect($url, $time) {
    echo "<script>
                window.setTimeout(function(){
                    window.location.href = '" . $url ."';
                }, " . $time .");
            </script>";
}


if (isset($_GET['logout'])) {
    session_destroy();
    header("location: index.php");
}

function logincheck() {
    if (!isset($_SESSION['user_id'])){
        header("location: index.php");
    }
}

function lists($list, $column)
{
    $columns = [];
    foreach($list->toArray() as $key => $value) {
        array_push($columns, $value[$column]);
    }

    return $columns;
}

function checkPid($pid) {
//    exec("ps $pid", $output, $result);
    return 2;
    //return count($output) >= 2 ? true : false;
}

class streaming extends DBPDO{
   var $id;
   var $settings;
   var $pid;
   var $DB;

   function __construct($id="0"){
	$this->DB = new DBPDO();		
   }

  function setSettings($id){	
	$this->id = $id;	
       	$this->settings = $this->DB->fetch("SELECT * FROM streams WHERE id = ?", $this->id);
  }

//   function getSettings(){
//	$this->settings = $DB->execute("UPDATE customers SET email = 'eposta@domain.com' WHERE username = 'xyz123'");
//   }

   function stop(){
	$exec = shell_exec("kill -9 " . $this->settings[pid]);
	$exec = shell_exec("/bin/rm -r /usr/local/nginx/html/streaming/hl/" . $this->id . "*");		
	$this->DB->execute("UPDATE streams SET status = 0, running = 0 WHERE id =".$this->id." ");   
   }

   function start(){
	//var_dump($this->settings);
	$check=shell_exec("/usr/bin/timeout 10s timeout 10 ffprobe -v quiet -show_streams " .$this->settings["streamurl"] ." | grep codec");
	$hlspath="/usr/local/nginx/html/streaming/hl";
	if (strpos($check, 'codec') !== false){
		// -crf 29
		$params = "-i ". $this->settings["streamurl"] ."   -strict -2 -dn -crf 28  -user_agent ClientStreaming -acodec copy -vcodec copy -hls_flags delete_segments -hls_time 10 -hls_list_size 8 -use_localtime 1 -hls_segment_filename '". $hlspath ."/". $this->id  ."_file-%Y%m%d-%s.ts' ";
   	        $pid    = shell_exec('ffmpeg '. $params . ' '. $hlspath .'/'.$this->id.'_.m3u8 > /dev/null & echo $!');
		$this->DB->execute("UPDATE streams SET pid = ".$pid.",status = 1, running = 1 WHERE id =".$this->id." ");
		return true;
	}else
	 return false;
    }
}

$stream_exec = new streaming();



if(ctype_digit($_GET['start']))
	$stream_exec->setSettings($_GET['start']);

if(ctype_digit($_GET['stop']))
        $stream_exec->setSettings($_GET['stop']);

if($_GET['mass_start'] || $_POST['mass_delete'])
        $stream_exec->setSettings($_POST['mselect']);

//var_dump($stream);
