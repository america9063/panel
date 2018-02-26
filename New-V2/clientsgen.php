<?php
include('config.php');
logincheck();

$message = [];
$title = "Client";
$user = User::find($_GET['uid']);
$setting = Setting::first();

echo $template->view()->make('clientsgen')
    ->with('user',  $user)
    ->with('title', $title)
    ->with('setting', $setting)
    ->render();
