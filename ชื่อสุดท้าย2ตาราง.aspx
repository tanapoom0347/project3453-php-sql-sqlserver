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

	//Colum
	$c0 = "คำนำหน้า";
	$c1 = "ชื่อ";
	$c2 = "นามสกุล";
	$c3 = "เลขประจำตัวประชาชน";
	$c4 = "pcode";
	$c5 = "จังหวัด";
	$c6 = "acode";
	$c7 = "อำเภอ";
	$c8 = "tcode";
	$c9 = "ตำบล";
	$c10 = "mcode";
	$c11 = "หมู่บ้าน";
	$c12 = "cnt";
	$c13 = "รหัสประเภทปัญหา1";
	$c14 = "ประเภทปัญหา1";
	$c15 = "รหัสประเภทปัญหา2";
	$c16 = "ประเภทปัญหา2";
	$c17 = "รหัสประเภทปัญหา3";
	$c18 = "ประเภทปัญหา3";
	$c19 = "รหัสประเภทปัญหา4";
	$c20 = "ประเภทปัญหา4";
	$c21 = "รหัสประเภทปัญหา21";
	$c22 = "ประเภทปัญหา21";
	$c23 = "รหัสประเภทปัญหา22";
	$c24 = "ประเภทปัญหา22";
	$c25 = "รหัสประเภทปัญหา23";
	$c26 = "ประเภทปัญหา23";
	$c27 = "รหัสประเภทปัญหา24";
	$c28 = "ประเภทปัญหา24";
	$c29 = "รหัสประเภทปัญหา25";
	$c30 = "ประเภทปัญหา25";
	$ccc1 = "ประเภทปัญหา";
	$ccc2 = "รหัสประเภทปัญหา";

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
 	for ($x = 0; $x <= $num-1; $x++) {
		$row = sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC); //OR SQLSRV_FETCH_NUMERIC
		$params[$x] = array(
			$c0=>$row[$c0],
			$c1=>$row[$c1],
			$c2=>$row[$c2],
			$c3=>$row[$c3],
			$c4=>$row[$c4],
			$c5=>$row[$c5],
			$c6=>$row[$c6],
			$c7=>$row[$c7],
			$c8=>$row[$c8],
			$c9=>$row[$c9],
			$c10=>$row[$c10],
			$c11=>$row[$c11],
			$c12=>$row[$c12],
			$c13=>$row[$c13],
			$c14=>$row[$c14],
			$c15=>$row[$c15],
			$c16=>$row[$c16],
			$c17=>$row[$c17],
			$c18=>$row[$c18],
			$c19=>$row[$c19],
			$c20=>$row[$c20],
			$c21=>$row[$c21],
			$c22=>$row[$c22],
			$c23=>$row[$c23],
			$c24=>$row[$c24],
			$c25=>$row[$c25],
			$c26=>$row[$c26],
			$c27=>$row[$c27],
			$c28=>$row[$c28],
			$c29=>$row[$c29],
			$c30=>$row[$c30]
		); 
			if($params[$x][$c12]==null) $params[$x][$c12] = "null"; else $params[$x][$c12] += 4;
			if($params[$x][$c13]==null) $params[$x][$c13] = "null";
			if($params[$x][$c14]==null) $params[$x][$c14] = "null";
			if($params[$x][$c15]==null) $params[$x][$c15] = "null";
			if($params[$x][$c16]==null) $params[$x][$c16] = "null";
			if($params[$x][$c17]==null) $params[$x][$c17] = "null";
			if($params[$x][$c18]==null) $params[$x][$c18] = "null";
			if($params[$x][$c19]==null) $params[$x][$c19] = "null";
			if($params[$x][$c20]==null) $params[$x][$c20] = "null";
			if($params[$x][$c21]==null) $params[$x][$c21] = "null";
			if($params[$x][$c22]==null) $params[$x][$c22] = "null";
			if($params[$x][$c23]==null) $params[$x][$c23] = "null";
			if($params[$x][$c24]==null) $params[$x][$c24] = "null";
			if($params[$x][$c25]==null) $params[$x][$c25] = "null";
			if($params[$x][$c26]==null) $params[$x][$c26] = "null";
			if($params[$x][$c27]==null) $params[$x][$c27] = "null";
			if($params[$x][$c28]==null) $params[$x][$c28] = "null";
			if($params[$x][$c29]==null) $params[$x][$c29] = "null";
			if($params[$x][$c30]==null) $params[$x][$c30] = "null";

	}
	echo "มีทั้งหมดจำนวน ".$num." แถว";
	echo "</br>ข้อมูลแถวแรก</br>";
	$x = 0;
	echo 
			$params[$x][$c0].", ".
			$params[$x][$c1].", ".
			$params[$x][$c2].", ".
			$params[$x][$c3].", ".
			$params[$x][$c4].", ".
			$params[$x][$c5].", ".
			$params[$x][$c6].", ".
			$params[$x][$c7].", ".
			$params[$x][$c8].", ".
			$params[$x][$c9].", ".
			$params[$x][$c10].", ".
			$params[$x][$c11].", ".
			$params[$x][$c12].", ".
			$params[$x][$c13].", ".
			$params[$x][$c14].", ".
			$params[$x][$c15].", ".
			$params[$x][$c16].", ".
			$params[$x][$c17].", ".
			$params[$x][$c18].", ".
			$params[$x][$c19].", ".
			$params[$x][$c20].", ".
			$params[$x][$c21].", ".
			$params[$x][$c22].", ".
			$params[$x][$c23].", ".
			$params[$x][$c24].", ".
			$params[$x][$c25].", ".
			$params[$x][$c26].", ".
			$params[$x][$c27].", ".
			$params[$x][$c28].", ".
			$params[$x][$c29].", ".
			$params[$x][$c30].
			"<br />";
	echo "ข้อมูลแถวสุดท้าย</br>";
	$num -= 1;
	echo 
			$params[$num][$c0].", ".
			$params[$num][$c1].", ".
			$params[$num][$c2].", ".
			$params[$num][$c3].", ".
			$params[$num][$c4].", ".
			$params[$num][$c5].", ".
			$params[$num][$c6].", ".
			$params[$num][$c7].", ".
			$params[$num][$c8].", ".
			$params[$num][$c9].", ".
			$params[$num][$c10].", ".
			$params[$num][$c11].", ".
			$params[$num][$c12].", ".
			$params[$num][$c13].", ".
			$params[$num][$c14].", ".
			$params[$num][$c15].", ".
			$params[$num][$c16].", ".
			$params[$num][$c17].", ".
			$params[$num][$c18].", ".
			$params[$num][$c19].", ".
			$params[$num][$c20].", ".
			$params[$num][$c21].", ".
			$params[$num][$c22].", ".
			$params[$num][$c23].", ".
			$params[$num][$c24].", ".
			$params[$num][$c25].", ".
			$params[$num][$c26].", ".
			$params[$num][$c27].", ".
			$params[$num][$c28].", ".
			$params[$num][$c29].", ".
			$params[$num][$c30].
			"<br />";

	//Free $smtmt
	sqlsrv_free_stmt($stmt);

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
 	for ($x = 0; $x <= $num2-1; $x++) {
		$row2 = sqlsrv_fetch_array($stmt2,SQLSRV_FETCH_ASSOC); //OR SQLSRV_FETCH_NUMERIC
		$params2[$x] = array(
			$c0=>$row2[$c0],
			$c1=>$row2[$c1],
			$c2=>$row2[$c2],
			$c3=>$row2[$c3],
			$c4=>$row2[$c4],
			$c5=>$row2[$c5],
			$c6=>$row2[$c6],
			$c7=>$row2[$c7],
			$c8=>$row2[$c8],
			$c9=>$row2[$c9],
			$c10=>$row2[$c10],
			$c11=>$row2[$c11],
			$ccc1=>$row2[$ccc1],
			$ccc2=>$row2[$ccc2]
		); 
	}
	echo "มีทั้งหมดจำนวน ".$num2." แถว";
	echo "</br>ข้อมูลแถวแรก</br>";
	$x = 0;
	echo 
			$params2[$x][$c0].", ".
			$params2[$x][$c1].", ".
			$params2[$x][$c2].", ".
			$params2[$x][$c3].", ".
			$params2[$x][$c4].", ".
			$params2[$x][$c5].", ".
			$params2[$x][$c6].", ".
			$params2[$x][$c7].", ".
			$params2[$x][$c8].", ".
			$params2[$x][$c9].", ".
			$params2[$x][$c10].", ".
			$params2[$x][$c11].", ".
			$params2[$x][$ccc1].", ".
			$params2[$x][$ccc2].", ".
			"<br />";
	echo "ข้อมูลแถวสุดท้าย</br>";
	$num2 -= 1;
	echo 
			$params2[$num2][$c0].", ".
			$params2[$num2][$c1].", ".
			$params2[$num2][$c2].", ".
			$params2[$num2][$c3].", ".
			$params2[$num2][$c4].", ".
			$params2[$num2][$c5].", ".
			$params2[$num2][$c6].", ".
			$params2[$num2][$c7].", ".
			$params2[$num2][$c8].", ".
			$params2[$num2][$c9].", ".
			$params2[$num2][$c10].", ".
			$params2[$num2][$c11].", ".
			$params2[$num2][$ccc1].", ".
			$params2[$num2][$ccc2].", ".
			"<br />";

	//Free $smtmt
	sqlsrv_free_stmt($stmt2);

	/////////Close///////////
	sqlsrv_close($conn);
?>