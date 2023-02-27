<?php 
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
			$ccc1=>$row[$ccc1],
			$ccc2=>$row[$ccc2]
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
			$params2[$num][$c0].", ".
			$params2[$num][$c1].", ".
			$params2[$num][$c2].", ".
			$params2[$num][$c3].", ".
			$params2[$num][$c4].", ".
			$params2[$num][$c5].", ".
			$params2[$num][$c6].", ".
			$params2[$num][$c7].", ".
			$params2[$num][$c8].", ".
			$params2[$num][$c9].", ".
			$params2[$num][$c10].", ".
			$params2[$num][$c11].", ".
			$params2[$num][$ccc1].", ".
			$params2[$num][$ccc2].", ".
			"<br />";

	//Free $smtmt
	sqlsrv_free_stmt($stmt2);

?>