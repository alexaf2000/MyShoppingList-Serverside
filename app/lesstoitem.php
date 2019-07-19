<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['less'])) {
    include("connection.php");
    $id   = mysql_real_escape_string(htmlspecialchars(trim($_POST['id'])));
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $lesstoitem    = mysql_query("SELECT list.quantity FROM list,products,users WHERE list.id_list='$id' and users.email='$email' and users.id_user=list.user");
    $result = mysql_result($lesstoitem, 0, 0);
    if ($result > 1) {
    	mysql_query("UPDATE list,products,users SET list.quantity=list.quantity-1 WHERE list.id_list='$id' and users.email='$email' and users.id_user=list.user");
        echo "success";
        echo $comprobarcantidad;
    } else {
        echo "error";
        echo $comprobarcantidad;
    }
}
?>