<?php
        for($j=2;$j<=9;$j++) {
            ///// Switch $j
            switch($j) {
                case 2 : {
                    $num_row2 = 357584;
                    $sql2 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql2);
                }
                case 3 : {
                    $num_row2 = 213591;
                    $sql3 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql3);
                }
                case 4 : {
                    $num_row2 = 418594;
                    $sql4 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql4);
                }
                case 5 : {
                    $num_row2 = 208669;
                    $sql5 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql5);
                }
                case 6 : {
                    $num_row2 = 211747;
                    $sql6 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql6);
                }
                case 7 : {
                    $num_row2 = 213302;
                    $sql7 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql7);
                }
                case 8 : {
                    $num_row2 = 241380;
                    $sql8 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql8);
                }
                case 9 : {
                    $num_row2 = 243241;
                    $sql9 = "select top $num_row2 * from $table2 $orderby1";
                    $stmt2 = sqlsrv_query($conn,$sql9);    
                }
            }

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

            /////เริ่ม$x & $i
            for($x=1;$x<=num_row1;$x++){
                for($i=1;$i<=num_row2;$i++){
                    if  (
                        ($param1[$x][$c1] == $param2[$i][$c1]) && 
                        ($param1[$x][$c2] == $param2[$i][$c2]) &&
                        ($param1[$x][$c3] == $param2[$i][$c3]) &&
                        ($param1[$x][$c4] == $param2[$i][$c4]) &&
                        ($param1[$x][$c5] == $param2[$i][$c5]) &&
                        ($param1[$x][$c6] == $param2[$i][$c6]) &&
                        ($param1[$x][$c7] == $param2[$i][$c7]) &&
                        ($param1[$x][$c8] == $param2[$i][$c8]) &&
                        ($param1[$x][$c9] == $param2[$i][$c9]) &&
                        ($param1[$x][$c10] == $param2[$i][$c10]) &&
                        ($param1[$x][$c11] == $param2[$i][$c11]) &&
                        ($param1[$x][$c12] == $param2[$i][$c12])
                    ) 
                {
                    $sqlupdate = "Update ".$table1." SET ".$c14." = 1, ".$c15." = 'ไม่มีบ้านอยู่' WHERE "
                    .$c1." = '".$param1[$x][$c1]."' AND "
                    .$c2." = '".$param1[$x][$c2]."' AND "
                    .$c3." = '".$param1[$x][$c3]."' AND "
                    .$c4." = '".$param1[$x][$c4]."' AND "
                    .$c5." = '".$param1[$x][$c5]."' AND "
                    .$c6." = '".$param1[$x][$c6]."' AND "
                    .$c7." = '".$param1[$x][$c7]."' AND "
                    .$c8." = '".$param1[$x][$c8]."' AND "
                    .$c9." = '".$param1[$x][$c9]."' AND "
                    .$c10." = '".$param1[$x][$c10]."' AND "
                    .$c11." = '".$param1[$x][$c11]."' AND "
                    .$c12." = '".$param1[$x][$c12]."'";
                    /* echo $sqlupdate."</br>"; */
                    $stmtupdate = sqlsrv_query($conn,$sqlupdate);
                    if($stmtupdate===false) {
                        die(print_r(sqlsrv_errors(),true));
                   }
                }
            }
        }
    }
?>