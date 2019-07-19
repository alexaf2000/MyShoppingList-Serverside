<?php
 header('Access-Control-Allow-Origin: *'); 
if(isset($_POST['login']))
{
include("connection.php");
$email=mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
$password=mysql_real_escape_string(htmlspecialchars(trim($_POST['password'])));
$login=mysql_num_rows(mysql_query("select * from `users` where `email`='$email' and BINARY `password`='$password'"));
if($login!=0)
{
$last_login=date("d-m-y H:i");
$last_ip = $_SERVER['REMOTE_ADDR'];
mysql_query("UPDATE users SET `last_ip`='$last_ip',`last_login`='$last_login' WHERE `email`='$email'");
echo "success";
}
else
{
echo "failed";
}
}
?>