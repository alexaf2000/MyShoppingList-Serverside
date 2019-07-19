<?php
 header('Access-Control-Allow-Origin: *'); 
	include "db.php";
	$email=htmlspecialchars($_GET["email"]);
	$data=array();
	$q=mysqli_query($con,"SELECT products.product_name_cat,list.quantity,products.product_size_cat,products.product_price,products.product_image,brands.brand_name,list.id_list FROM users,list,products,brands WHERE users.email='$email' and users.id_user=list.user and list.product=products.id_product and products.product_brand=brands.brand_id");
	while ($row=mysqli_fetch_object($q)){
 		$data[]=$row;
	}
	echo json_encode($data);
		?>