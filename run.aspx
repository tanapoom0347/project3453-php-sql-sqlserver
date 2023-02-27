<?php 
    require'.resource/param12.aspx';
    //////// Run /////////
    $sqlexec1 = "Update ".$table1." SET "
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
    echo "</br>".$sqlexec1;
    /* for($x=1;$x<=$num_row1;$x++){
        for($i=1;$i<=$num_row2;$i++){
            if(

            ) {

            }
        }
    } */

	/////////Close///////////
	sqlsrv_close($conn);
?>