<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['delete'])) {
    include("connection.php");
    $id   = mysql_real_escape_string(htmlspecialchars(trim($_POST['id'])));
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $delete    = mysql_query("DELETE FROM list WHERE list.id_list = '$id'");
    if ($delete != 0) {
        echo "success";
    } else {
        echo "error";
    }
}
?>