<?php 
    require'.resource/param12.aspx';

    //////// Run /////////
    /* $sqlexec1 = "Update ".$table1." SET "
        .$c14." = 1, " //อัพเดตช่องรหัสประเภทปัญหา1
        .$c15." = 'ไม่มีบ้านอยู่' ";  //อัพเดตช่องประเภทปัญหา1
    $sqlexec1 .= "WHERE "
        .$c1."= '".$param1[$num_row1][$c1]."' AND "
        .$c2."= '".$param1[$num_row1][$c2]."' AND "
        .$c3."= '".$param1[$num_row1][$c3]."' AND "
        .$c4."= '".$param1[$num_row1][$c4]."' AND "
        .$c5."= '".$param1[$num_row1][$c5]."' AND "
        .$c6."= '".$param1[$num_row1][$c6]."' AND "
        .$c7."= '".$param1[$num_row1][$c7]."' AND "
        .$c8."= '".$param1[$num_row1][$c8]."' AND "
        .$c9."= '".$param1[$num_row1][$c9]."' AND "
        .$c10."= '".$param1[$num_row1][$c10]."' AND "
        .$c11."= '".$param1[$num_row1][$c11]."'";
    echo "</br>".$sqlexec1; */

    for($x=1;$x<=$num_row1;$x++){
        for($i=1;$i<=$num_row2;$i++){
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
                $sqlupdate = "Update ? SET ? = 1, ? = 'ไม่มีบ้านอยู่' WHERE ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?' AND ? = '?'";
                $stmtupdate = sqlsrv_prepare($conn,$sqlupdate,array(
                    &$table1,&$c14,&$c15,
                    &$c1,&$param1[$x][$c1],
                    &$c2,&$param1[$x][$c2],
                    &$c3,&$param1[$x][$c3],
                    &$c4,&$param1[$x][$c4],
                    &$c5,&$param1[$x][$c5],
                    &$c6,&$param1[$x][$c6],
                    &$c7,&$param1[$x][$c7],
                    &$c8,&$param1[$x][$c8],
                    &$c9,&$param1[$x][$c9],
                    &$c10,&$param1[$x][$c10],
                    &$c11,&$param1[$x][$c11],
                    &$c12,&$param1[$x][$c12]
                    )
                );
                /* echo $sqlupdate."</br>"; */
                sqlsrv_execute($stmtupdate);
            }
        }
    }
    echo "success!!! b01 yeah!";
	/////////Close///////////
	sqlsrv_close($conn);
?>