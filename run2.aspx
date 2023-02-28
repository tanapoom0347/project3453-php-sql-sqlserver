<?php 
    require'.resource/param1.aspx';

    for($x=1;$x<=$num_row1;$x++) {
        $i = 0;
        if(param1[$x][$c14]!=null) $i++;
        if(param1[$x][$c16]!=null) $i++;
        if(param1[$x][$c18]!=null) $i++;
        if(param1[$x][$c20]!=null) $i++;
        if(param1[$x][$c22]!=null) $i++;
        if(param1[$x][$c24]!=null) $i++;
        if(param1[$x][$c26]!=null) $i++;
        if(param1[$x][$c28]!=null) $i++;
        if(param1[$x][$c30]!=null) $i++;
        /////SQL Update.
        $sqlupdate = "Update ".$table1." SET "
        .$c13." = ".$i." WHERE "
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
        /////statement update.
        $stmtupdate = sqlsrv_query($conn,$sqlupdate);
            if($stmtupdate===false) {
                die(print_r(sqlsrv_errors(),true));
            }
    }

    for($i=1;$i<=30;$i++) {
        echo "success!!! ".$c13."! yeah!!!!</br>";
    }
    /////////Close///////////
	sqlsrv_close($conn);
    unset($param1);
    sqlsrv_free_stmt($stmtupdate);
?>