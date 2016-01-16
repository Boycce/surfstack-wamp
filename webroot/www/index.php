<?php

// Simulate the Dev PHP.ini
error_reporting(E_ALL);
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
ini_set('track_errors', '1');

// If the Composer autoloader is found
if (is_file(__DIR__.'/../vendor/autoload.php'))
{
    // Load the Composer autoloader
    require_once __DIR__.'/../vendor/autoload.php';
}

// ****************************************************************************
// Remove everything below this line, it is just for testing
// ****************************************************************************

// ****************************************************************************
// If you can read this from your web browser, PHP is not working correctly :-(
// ****************************************************************************

if (function_exists('apache_get_version')) echo apache_get_version() .' connected<br>';
else echo 'Nginx connected<br>';

echo 'PHP '. phpversion() .' is working<br>';

// Attempt to connect to MySQL
$mysqli = @new mysqli('127.0.0.1', 'root', '');

// If the MySQL connection failed
if ($mysqli->connect_error)
{
	// Output failed
	echo 'MySQL '. $mysqli->server_info .' not connected<br>';
}
// Else the MySQL connection was successful
else
{
	// Output success
	echo 'MySQL '. $mysqli->server_info .' connected<br>';
}

try
{
    // Attempt to connect to MongoDB
    $connection = @new MongoClient('mongodb://127.0.0.1:27017');
    
    // Output success
    echo 'MongoDB '.MongoClient::VERSION.' connected<br>';
}
catch (MongoConnectionException $e)
{
    // Output failed
    echo 'MongoDB '.MongoClient::VERSION.' not connected<br>';
}

echo nl2br(PHP_EOL);
echo '<a href="/x/adminer">Click here to open Adminer for MySQL.</a>'.nl2br(PHP_EOL);
//echo '<a href="/x/genghis">Click here to open Genghis for MongoDB.</a>'.nl2br(PHP_EOL);