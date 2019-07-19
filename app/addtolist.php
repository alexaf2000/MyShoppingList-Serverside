<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['addtolist'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $id = mysql_real_escape_string(htmlspecialchars(trim($_POST['id'])));
    $existeendb    = mysql_query("SELECT products.product_name FROM products WHERE products.id_product='$id' LIMIT 1;");
    $array = mysql_fetch_row($existeendb);
    if ($array != 0) {
        $consultaexistepu = mysql_query("SELECT list.id_list FROM users,list where list.product='$id' and users.email='$email' and users.id_user=list.user;");
        $comprobarusuariotiene = mysql_fetch_row($consultaexistepu);
        if ($comprobarusuariotiene !=0 ) {
            mysql_query("UPDATE list,products,users SET list.quantity=list.quantity+1 WHERE list.product='$id' and users.email='$email' and users.id_user=list.user;");
        }
        else {
            mysql_query("INSERT INTO list (user, product, quantity) SELECT users.id_user,'$id','1' FROM products,users WHERE users.email='$email' LIMIT 1;");
        }
        echo "success";
    } else {
        echo "failed";
    }
}
?>