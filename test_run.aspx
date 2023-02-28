<?php 
    require'.resource/param12.aspx';
    $x = 18;
    echo $param1[$x][$c1].",".$param1[$x][$c2].",".$param1[$x][$c3].",".$param1[$x][$c4].",".$param1[$x][$c5].",".$param1[$x][$c6].",".$param1[$x][$c7].",".$param1[$x][$c8].",".$param1[$x][$c9].",".$param1[$x][$c10].",".$param1[$x][$c11].",".$param1[$x][$c12]."</br>";

                $sqlupdate = "Update ".$table1." SET ".$c14." = null, ".$c15." = null WHERE "
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
                echo $sqlupdate."</br>";
                sqlsrv_query($conn,$sqlupdate);

    /* echo "success!!!"; */
	/////////Close///////////
	sqlsrv_close($conn);
?>