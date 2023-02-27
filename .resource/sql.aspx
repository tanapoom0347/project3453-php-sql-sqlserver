<?php 
    require'var.aspx';
	//SQL
	$num_row1 = 200000;
	$top1 = "top $num_row1";
	/* $col = "$c1, $c2"; */
	$orderby1 = "order by $c6, $c8, $c10, $c12, $c2";
	$table1 = "t_d1_test";
    //SQL1
	$sql1 = "select $top1 * from $table1 $orderby1";
	//echo SQL
	/* echo $sql1."</br>"; */

    //SQL2
	$num_row2 = 210254;
	$top2 = "top $num_row2";
	/* $col2 = "$c1, $c2"; */
	$orderby2 = "order by $c33,$c6, $c8, $c10, $c12, $c2";
	$table2 = "b01";
    //SQL2
	$sql2 = "select $top2 * from $table2 $orderby2";
	//echo SQL2
	/* echo $sql2."</br>"; */

?>