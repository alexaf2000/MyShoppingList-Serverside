<?php
if (isset($_POST['scan'])) {
     header('Access-Control-Allow-Origin: *'); 
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $barcode = mysql_real_escape_string(htmlspecialchars(trim($_POST['barcode'])));
    $scan    = mysql_query("SELECT products.product_name,brands.brand_name,products.product_price,products.product_size,products.product_image FROM products,brands WHERE brands.brand_id=products.product_brand and products.product_barcode='$barcode' LIMIT 1");
    $array = mysql_fetch_row($scan);
    if ($array != 0) {
        $consultaexistepu = mysql_query("SELECT list.id_list FROM users,list,products where products.product_barcode='$barcode' and users.email='$email' and users.id_user=list.user and list.product=products.id_product");
        $comprobarusuariotiene = mysql_fetch_row($consultaexistepu);
        if ($comprobarusuariotiene !=0 ) {
            mysql_query("UPDATE list,products,users SET list.quantity=list.quantity+1 WHERE products.product_barcode='$barcode' and users.email='$email' and users.id_user=list.user and list.product=products.id_product");
        }
        else {
            mysql_query("INSERT INTO list (user, product, quantity) SELECT users.id_user,products.id_product,'1' FROM products,users WHERE users.email='$email' and products.product_barcode='$barcode' LIMIT 1");
        }
        echo json_encode($array);
    }
    else {
            $permcomp = mysql_query("SELECT perm FROM users WHERE email = '$email' LIMIT 1");
            $permisos = mysql_fetch_row($permcomp);
            if ($permisos[0]==1) {
                $array=failedandadd;
                echo json_encode($array);
            } else {
        $array=failed;
        $date= date("d-m-y H:i");
        mysql_query("INSERT INTO `appdb`.`productsnone` (`id_productsnone`, `barcodepn`, `datascan` ) VALUES (NULL, '$barcode', '$date')");
        echo json_encode($array);
        }
    }
}
?>