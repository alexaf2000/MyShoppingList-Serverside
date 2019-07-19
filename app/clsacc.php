<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['clsacc'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $nam   = mysql_real_escape_string(htmlspecialchars(trim($_POST['nam'])));
    $sur   = mysql_real_escape_string(htmlspecialchars(trim($_POST['sur'])));
    $consult = mysql_query("UPDATE `appdb`.`users` SET `email` = 'desactivated:$email' WHERE `users`.`email` = '$email';");
    $array = mysql_fetch_row($consult);
    if ($consult != 0) {
    	$array=success;
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>