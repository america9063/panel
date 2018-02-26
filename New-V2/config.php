<?php
//error off to debug comment next line 
//error_reporting(0);

session_start();
date_default_timezone_set('Europe/Istanbul');


define('DATABASE_NAME', 'iptv');
define('DATABASE_USER', 'root');
define('DATABASE_PASS', 'xxxxx');
define('DATABASE_HOST', 'localhost');

require 'vendor/autoload.php';
include('functions.php');

use Philo\Blade\Blade;
use Illuminate\Database\Capsule\Manager as Capsule;

$views = __DIR__ . '/views';
$cache = __DIR__ . '/cache';
$template = new Blade($views, $cache);

$capsule = new Capsule;
$capsule->addConnection([
    'driver'    => 'mysql',
    'host'      => DATABASE_HOST,
    'database'  => DATABASE_DB,
    'username'  => DATABASE_USER,
    'password'  => DATABASE_PASS,
    'charset'   => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix'    => '',
]);
$capsule->setAsGlobal();
$capsule->bootEloquent();
