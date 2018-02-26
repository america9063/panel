
<?php
include('config.php');
set_time_limit(0);
error_reporting(0);
if (isset($_SERVER['HTTP_USER_AGENT'])) {
    $agent = $_SERVER['HTTP_USER_AGENT'];
}


if (empty($_GET['u']) || empty($_GET['p'])) {
    $error = "Username or Password is invalid";
    header($_SERVER['SERVER_PROTOCOL'] . ' 404 Not Found');
    header('Status: 404 Not Found');
    die();
}
$u = $_GET['u'];
$p = $_GET['p'];
$user = User::where('username', '=', $u)->where('password', '=', $p)->where('active', '=', 1)->first();
if(!$user) {
    die("-");
}


$setting = Setting::first();

if(isset($_GET['e2'])) {
    echo "#NAME HLSServer.com \r\n";
    foreach($user->categories as $category) {
        foreach($category->streams as $stream) {
            if($stream->running == 1) {
                echo "#SERVICE 1:0:1:0:0:0:0:0:0:0:http%3A//".$setting->webip."%3A".$setting->webport."/live/".$user->username."/".$user->password."/".$stream->id ."\r\n";
                echo"#DESCRIPTION " . $stream->name ."\r\n";
            }
        }
    }
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename="userbouquet_'.$u.'.favourites.tv"');
    die;
}

if(isset($_GET['m3u'])) {
    echo "#EXTM3U \r\n";
    foreach($user->categories as $category) {
        foreach($category->streams as $stream) {

            if($stream->running == 1) {
                if (strlen(strstr($agent, 'Kodi')) > 0) {	
			echo "#EXTINF:0 tvg-logo=\"" . $stream->logo . "\" tvg-id=\"" . $stream->tvid . "\" ,[COLOR green]" . $stream->name . "[/COLOR]\r\n";
                } else {
			echo "#EXTINF:0 tvg-logo=\"" . $setting->logourl . "" . $stream->logo . "\" tvg-id=\"" . $stream->tvid . "\" ," . $stream->name . "\r\n";
		}
                echo "http://" . $setting->webip . ":" . $setting->webport . "/live/" . $user->username . "/" . $user->password . "/" . $stream->id . "\r\n";
            }
        }
    }
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename="'.$u.'_channels.m3u"');
    die;
}

