<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['chcpp'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $cp   = mysql_real_escape_string(htmlspecialchars(trim($_POST['cp'])));
    $changecp = mysql_query("UPDATE users SET cp = '$cp' WHERE email='$email' LIMIT 1");
    $array = mysql_fetch_row($changecp);
    if ($changecp != 0) {
    	$array=success;
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>