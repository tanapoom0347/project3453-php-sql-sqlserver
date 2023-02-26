<?php 
	//Connection 'Example' Database
	$serverName = "HP-HP\SQLEXPRESS";
	$connectionInfo = array( "Database"=>"Example", "UID"=>"demo", "PWD"=>"sql@3453", "CharacterSet" => "UTF-8");
	$conn = sqlsrv_connect( $serverName, $connectionInfo);
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

	//SQL
	$num = 200000;
	$top = "top $num";
	$col = "$c1, $c2";
	$orderby = " order by $c5, $c7, $c9, $c11, $c1";
	$table = "t_d_part1";
	$sql = "select $top * from $table$orderby";
	//echo SQL
	echo $sql."</br>";
	$stmt = sqlsrv_query($conn,$sql);
	if( $stmt === false) {
    die( print_r( sqlsrv_errors(), true) );
}
	$w1 = 0;
	for ($x = 0; $x <= $num-1; $x++) {
		$w1++;
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
		/* echo 
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
			"<br />"; */
	}

	echo "มีทั้งหมดจำนวน ".$w1." แถว";
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
	$w1 -= 1;
	echo 
			$params[$w1][$c0].", ".
			$params[$w1][$c1].", ".
			$params[$w1][$c2].", ".
			$params[$w1][$c3].", ".
			$params[$w1][$c4].", ".
			$params[$w1][$c5].", ".
			$params[$w1][$c6].", ".
			$params[$w1][$c7].", ".
			$params[$w1][$c8].", ".
			$params[$w1][$c9].", ".
			$params[$w1][$c10].", ".
			$params[$w1][$c11].", ".
			$params[$w1][$c12].", ".
			$params[$w1][$c13].", ".
			$params[$w1][$c14].", ".
			$params[$w1][$c15].", ".
			$params[$w1][$c16].", ".
			$params[$w1][$c17].", ".
			$params[$w1][$c18].", ".
			$params[$w1][$c19].", ".
			$params[$w1][$c20].", ".
			$params[$w1][$c21].", ".
			$params[$w1][$c22].", ".
			$params[$w1][$c23].", ".
			$params[$w1][$c24].", ".
			$params[$w1][$c25].", ".
			$params[$w1][$c26].", ".
			$params[$w1][$c27].", ".
			$params[$w1][$c28].", ".
			$params[$w1][$c29].", ".
			$params[$w1][$c30].
			"<br />";
	//Free $smtmt
	sqlsrv_free_stmt($stmt);

	/////////Close///////////
	sqlsrv_close($conn);
?>