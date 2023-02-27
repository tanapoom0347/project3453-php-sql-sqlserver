<?php 
	//SQL
	$num = 214374;
	$top = "top $num";
	$col = "$c1, $c2";
	$orderby = " order by $c5, $c7, $c9, $c11, $c1";
	$table = "t_d_part4";
	$sql = "select $top * from $table$orderby";
	//echo SQL
	echo $sql."</br>";
	$stmt = sqlsrv_query($conn,$sql);
	if( $stmt === false) {
    die( print_r( sqlsrv_errors(), true) );
    }
    //SQL2
	$num2 = 210254;
	$top2 = "top $num2";
	$col2 = "$c1, $c2";
	$orderby2 = " order by $ccc2,$c5, $c7, $c9, $c11, $c1";
	$table2 = "b01";
	$sql2 = "select $top2 * from $table2$orderby2";
	//echo SQL2
	echo $sql2."</br>";
	$stmt2 = sqlsrv_query($conn,$sql2);
	if( $stmt2 === false) {
    die( print_r( sqlsrv_errors(), true) );
    }
?>