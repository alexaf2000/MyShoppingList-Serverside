<?php
 header('Access-Control-Allow-Origin: *'); 
	include "db.php";
	$keyword=htmlspecialchars($_GET["search"]);
	$data=array();
	$q=mysqli_query($con,"SELECT products.product_name_cat,brands.brand_name,products.product_price,products.product_size_cat,products.product_image,products.id_product FROM products,brands WHERE brands.brand_id=products.product_brand and products.product_name_cat LIKE '%$keyword%' LIMIT 5");
	while ($row=mysqli_fetch_object($q)){
 		$data[]=$row;
	}
	echo json_encode($data);
		?>
