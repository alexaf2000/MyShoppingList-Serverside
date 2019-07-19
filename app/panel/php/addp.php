<?php
if (isset($_POST['add'])) {
    $idioma = $_POST['idioma'];
    $id     = $_POST['id'];
    $con    = mysqli_connect("hl353.dinaserver.com", "atrexinos", "hcetigol", "appdb");
    mysqli_set_charset($con, "utf8");
    // Check connection
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    $recibecodigobarras      = mysqli_query($con, "SELECT * FROM addp WHERE id_add='$id' LIMIT 1");
    $row                     = mysqli_fetch_array($recibecodigobarras);
    $codigobarras            = $row['barcode'];
    $nombre                  = $row['product_name'];
    $marca                   = $row['brand'];
    $medida                  = $row['size'];
    $user                 = $row['user'];
    $consultacompruebaexiste = mysqli_query($con, "SELECT * FROM products WHERE product_barcode='$codigobarras' LIMIT 1");
    $compruebaexiste         = mysqli_fetch_row($consultacompruebaexiste);
    if ($compruebaexiste != 0) {
        $array=exists;
        		echo json_encode($array);
    } else {
        $compruebamarcaexiste = mysqli_query($con, "SELECT * FROM brands WHERE brand_name='$marca' LIMIT 1");
        $marcaexiste          = mysqli_fetch_row($compruebamarcaexiste);
        if ($marcaexiste != 0) {
            $id_marca = $marcaexiste[0];
            if ($idioma = 'es') {
                $añadir = mysqli_query($con, "INSERT INTO `appdb`.`products` (`id_product`, `product_name`, `product_brand`, `product_size`, `product_price`, `product_image`, `product_barcode`) VALUES (NULL, '$nombre', '$id_marca', '$medida', '0.00', 'https://myshoppinglist.cat/app/images/$codigobarras.png', '$codigobarras');");
                if ($añadir != 0) {
                    $array=added;
        		echo json_encode($array);
                    mysqli_query($con, "DELETE FROM addp WHERE id_add = $id");
					mysqli_query($con, "INSERT INTO list (user, product, quantity) SELECT users.id_user,products.id_product,'1' FROM products,users WHERE users.email='$user' and products.product_barcode='$codigobarras' LIMIT 1;");
                }
            } else if ($idioma = 'cat') {
                $añadir = mysqli_query($con, "INSERT INTO `appdb`.`products` (`id_product`, `product_name_cat`, `product_brand`, `product_size_cat`, `product_price`, `product_image`, `product_barcode`) VALUES (NULL, '$nombre', '$id_marca', '$medida', '0.00', 'https://myshoppinglist.cat/app/images/$codigobarras.png', '$codigobarras');");
                
                if ($añadir != 0) {
                    $array=added;
        		echo json_encode($array);
                    mysqli_query($con, "DELETE FROM addp WHERE id_add = $id");
                    mysqli_query($con, "INSERT INTO list (user, product, quantity) SELECT users.id_user,products.id_product,'1' FROM products,users WHERE users.email='$user' and products.product_barcode='$codigobarras' LIMIT 1;");
                }
            }
        } else {
        	$crearmarca = mysqli_query($con, "INSERT INTO `appdb`.`brands` (`brand_name`) VALUES ('$marca');");
        	if ($crearmarca!=0) {
        		 $array=marcacreada;
        		echo json_encode($array);
        	} else {
        		$array=marcanoexistefail;
        		echo json_encode($array);
        	}
            
        }
    }
}
if (isset($_POST['delete'])) {
    $id  = $_POST['id'];
    $con = mysqli_connect("hl353.dinaserver.com", "atrexinos", "hcetigol", "appdb");
    mysqli_set_charset($con, "utf8");
    // Check connection
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    $eliminar = mysqli_query($con, "DELETE FROM addp WHERE id_add = $id");
    if ($eliminar != 0) {
        $array=Eliminado;
        echo json_encode($array);
    } else {
        $array=failed;
       echo json_encode($array);
    }
}
if (isset($_POST['show'])) {
    $id  = $_POST['id'];
    $con = mysqli_connect("hl353.dinaserver.com", "atrexinos", "hcetigol", "appdb");
    mysqli_set_charset($con, "utf8");
    // Check connection
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    $mostrar = mysqli_query($con, "SELECT * FROM addp WHERE id_add='$id' LIMIT 1");
    $datos         = mysqli_fetch_row($mostrar);
    if ($datos != 0) {
        echo json_encode($datos);
    } else {
        $array=failed;
       echo json_encode($array);
    }
}
if (isset($_POST['chang'])) {
    $link=mysql_connect("hl353.dinaserver.com","atrexinos","hcetigol");
    mysql_set_charset("UTF8", $link);
    mysql_select_db("appdb",$link) OR DIE ("Error: No es posible establecer la conexión");
    $id   = mysql_real_escape_string(htmlspecialchars(trim($_POST['id'])));
    $product   = mysql_real_escape_string(htmlspecialchars(trim($_POST['pr'])));
    $brand   = mysql_real_escape_string(htmlspecialchars(trim($_POST['br'])));
    $size   = mysql_real_escape_string(htmlspecialchars(trim($_POST['siz'])));
    $updateinfo = mysql_query("UPDATE `appdb`.`addp` SET `product_name` = '$product', `brand` = '$brand', `size` = '$size' WHERE `addp`.`id_add` = '$id';");
    if ($updateinfo != 0) {
        $array = modificado;
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>
