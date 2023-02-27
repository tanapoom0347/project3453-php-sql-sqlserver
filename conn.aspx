<?php 
$serverName = "POOMPC\EXPRESS";
$database = "Example";
$uid = "demo";
$pass = "sql@3453";

$connection = [ 
"Database" => $database,
"Uid" => $uid,
"PWD" => $pass,
"CharacterSet" => "UTF-8"
];

$conn = sqlsrv_connect( $serverName, $connection);
	
	if( $conn === false ) {
	    die( print_r( sqlsrv_errors(), true));
	}
?>