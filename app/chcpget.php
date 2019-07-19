<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['chcpget'])) {
    include("connection.php");
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
    $searchingaccount = mysql_query("SELECT cp FROM users WHERE users.email='$email' LIMIT 1");
    $array = mysql_fetch_row($searchingaccount);
    if ($array != 0) {
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>