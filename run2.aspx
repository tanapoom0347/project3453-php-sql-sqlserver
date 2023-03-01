<?php 
    require'.resource/param1.aspx';

    for($x=1;$x<=$num_row1;$x++) {
        $i = 0;
        if($param1[$x][$c14]!=null) $i++;
        if($param1[$x][$c16]!=null) $i++;
        if($param1[$x][$c18]!=null) $i++;
        if($param1[$x][$c20]!=null) $i++;
        if($param1[$x][$c22]!=null) $i++;
        if($param1[$x][$c24]!=null) $i++;
        if($param1[$x][$c26]!=null) $i++;
        if($param1[$x][$c28]!=null) $i++;
        if($param1[$x][$c30]!=null) $i++;
        /////SQL Update.
        $sqlupdate = "Update ".$table1." SET "
        .$c13." = ".$i." WHERE "
        .$c2." = ? AND "
        .$c3." = ? AND "
        .$c4." = ? AND "
        .$c11." = ?";
        /////statement update.
        $parameters = [$param1[$x][$c2],$param1[$x][$c3],$param1[$x][$c4],$param1[$x][$c11]];
        $stmtupdate = sqlsrv_query($conn,$sqlupdate,$parameters);
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