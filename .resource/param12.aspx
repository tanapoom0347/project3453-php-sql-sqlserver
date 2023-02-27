<?php 
    require'conn.aspx';
    require'sql.aspx';
	$stmt1 = sqlsrv_query($conn,$sql1);
	if( $stmt1 === false) {
    die( print_r(sqlsrv_errors(),true));
    }else /* echo "</br>1"; */
	$stmt2 = sqlsrv_query($conn,$sql2);
	if( $stmt2 === false) {
    die( print_r(sqlsrv_errors(),true));
    }else /* echo "</br>2"; */

    //เก็บค่าในparam1
    for ($x = 1; $x <= $num_row1; $x++) {
        $row = sqlsrv_fetch_array($stmt1,SQLSRV_FETCH_ASSOC); //OR SQLSRV_FETCH_NUMERIC
		$param1[$x] = array(
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
            $c29=>$row[$c30],
			$c30=>$row[$c31]
		);
    }
    //Free $smtmt1
    sqlsrv_free_stmt($stmt1); /* echo "suc"; */
    echo "</br>".$num_row1." ".$param1[$num_row1][$c4];

    //เก็บค่าในparam2
    for ($x = 1; $x <= $num_row2; $x++) {
        $row2 = sqlsrv_fetch_array($stmt2,SQLSRV_FETCH_ASSOC); //OR SQLSRV_FETCH_NUMERIC
		$param2[$x] = array(
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
			$c12=>$row2[$c12],
			$c32=>$row2[$c32],
			$c33=>$row2[$c33]
		);
    }
    //Free $smtmt2
    sqlsrv_free_stmt($stmt2); /* echo "cess!</br>"; */
    /* echo "</br>".$num_row2." ".$param2[$num_row2][$c4]; */
?>