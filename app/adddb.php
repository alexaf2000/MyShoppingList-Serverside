<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['adddb'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $barcodedb   = mysql_real_escape_string(htmlspecialchars(trim($_POST['barcode'])));
    $productdb   = mysql_real_escape_string(htmlspecialchars(trim($_POST['productdb'])));
    $branddb   = mysql_real_escape_string(htmlspecialchars(trim($_POST['branddb'])));
    $sizedb   = mysql_real_escape_string(htmlspecialchars(trim($_POST['sizedb'])));
    $add = mysql_query("INSERT INTO addp (`id_add`, `product_name`, `brand`, `size`, `barcode`, `user`) VALUES (NULL, '$productdb', '$branddb', '$sizedb', '$barcodedb', '$email');");
    $array = mysql_fetch_row($add);
    if ($add != 0) {
    	$array=success;
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>