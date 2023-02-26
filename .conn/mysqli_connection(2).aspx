<?php 

	$conn=mysqli_connect("localhost","root","12345678","demo");

	if (mysqli_connect_errno())
	{ 
		echo "Database Connect Failed : " . mysqli_connect_error(); 
	}
	else 
	{ 
		echo "MySQL Database 'demo' Connected."; 
	}

	mysqli_close($conn);

?>