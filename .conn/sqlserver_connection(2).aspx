<?php

$serverName = "POOMPC\EXPRESS";
$database = "db8";
$uid = "demo";
$pass = "sql@3453";

$connection = [ 
"Database" => $database,
"Uid" => $uid,
"PWD" => $pass 
];

$conn = sqlsrv_connect( $serverName, $connection);

if( $conn ) {
     echo "SQL Server Database '".$database."' is Connected.";
}else{
     echo "Connection could not be established.<br />";
     die( print_r( sqlsrv_errors(), true));
}
?>