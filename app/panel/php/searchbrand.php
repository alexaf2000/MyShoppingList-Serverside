<?php
	include "../../db.php";
	$keyword=htmlspecialchars($_GET["search"]);
	$data=array();
	$q=mysqli_query($con,"SELECT brand_name FROM brands WHERE brand_name LIKE '%$keyword%' LIMIT 5");
	while ($row=mysqli_fetch_object($q)){
 		$data[]=$row;
	}
	echo json_encode($data);
		?>
