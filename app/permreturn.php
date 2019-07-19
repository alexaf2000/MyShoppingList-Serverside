<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['return'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $changenamesur = mysql_query("UPDATE users SET perm = '0' WHERE email='$email' LIMIT 1");
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