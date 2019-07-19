<?php
 header('Access-Control-Allow-Origin: *'); 
if(isset($_POST['signup']))
{
include("connection.php");
$name=mysql_real_escape_string(htmlspecialchars(trim($_POST['name'])));
$surname=mysql_real_escape_string(htmlspecialchars(trim($_POST['surname'])));
$cp=mysql_real_escape_string(htmlspecialchars(trim($_POST['cp'])));
$email=mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
$password=mysql_real_escape_string(htmlspecialchars(trim($_POST['password'])));
$login=mysql_num_rows(mysql_query("select * from `users` where `email`='$email'"));
if($login!=0)
{
echo "exist";
}
else
{
$date=date("d-m-y H:i");
$ip_address = $_SERVER['REMOTE_ADDR'];
$q=mysql_query("insert into `users` (`date`,`ip_address`,`name`,`surname`,`cp`,`email`,`password`) values ('$date','$ip_address','$name','$surname','$cp','$email','$password')");
if($q)
{
$to = "$email";
$subject = "Bienvenido a MyShoppingList";
$message = "¡Hola $email! Gracias por formar parte de MyShoppingList, esperamos que disfrutes de nuestro servicio con nosotros. Recuerda recomendar nuestra aplicación si te sientes agusto, te lo agradeceremos muchísimo! -Un cordial saludo, el equipo de MyShoppingList.";
$headers = "From: servicio@myshoppinglist.cat" . "\r\n";
mail($to, $subject, $message, $headers);
echo "success";
}
else
{
echo "failed";
}
}
echo mysql_error();
}
?>