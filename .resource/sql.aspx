<?php 
    require'var.aspx';
	//SQL1
	$num_row1 = 814374;
	$orderby1 = "order by $c6, $c8, $c10, $c12, $c2";
	$table1 = "t_demo_dist_test";
    //SQL
	$sql1 = "select top $num_row1 * from $table1 $orderby1";
	//echo SQL1
	/* echo $sql1."</br>"; */

    //SQL2
	$num_row2 = 210254;
	$table2 = "b01";
    //SQL
	$sql2 = "select top $num_row2 * from $table2 $orderby1";
	//echo SQL2
	/* echo $sql2."</br>"; */
?>