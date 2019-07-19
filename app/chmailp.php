<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['chmailp'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $emailnew  = mysql_real_escape_string(htmlspecialchars(trim($_POST['emailnew'])));
    $changenamesur = mysql_query("UPDATE users SET email = '$emailnew' WHERE email='$email' LIMIT 1");
    $array = mysql_fetch_row($changenamesur);
    if ($changenamesur != 0) {
    	$array=success;
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>