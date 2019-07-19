<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['chpwdp'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $oldpassword  = mysql_real_escape_string(htmlspecialchars(trim($_POST['oldpassword'])));
    $newpassword  = mysql_real_escape_string(htmlspecialchars(trim($_POST['newpassword'])));
    $comprobationpassword = mysql_query("SELECT password FROM users WHERE email='$email' LIMIT 1");
    $field = mysql_result($comprobationpassword, 0);
    $array = mysql_fetch_row($comprobationpassword);
    if ($field == $oldpassword) {
        mysql_query("UPDATE users SET password = '$newpassword' WHERE email='$email' LIMIT 1");
    	$array=success;
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>