<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['add'])) {
    include("connection.php");
    $id   = mysql_real_escape_string(htmlspecialchars(trim($_POST['id'])));
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $addtoitem    = mysql_query("UPDATE list,products,users SET list.quantity=list.quantity+1 WHERE list.id_list='$id' and users.email='$email'");
    if ($addtoitem != 0) {
        echo "success";
    } else {
        echo "error";
    }
}
?>