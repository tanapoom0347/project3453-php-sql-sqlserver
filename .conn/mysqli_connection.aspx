<?php 

	$host = "localhost";
	$username = "root";
	$userpassword = "12345678";
	$dbname = "disney";

	$conn=mysqli_connect($host,$username,$userpassword,$dbname);

	if (mysqli_connect_errno())
	{ 
		echo "Database Connect Failed : " . mysqli_connect_error(); 
	}
	else 
	{ 
		echo "MySQL Database '".$dbname."' Connected."; 
	}

	mysqli_close($conn);

?>