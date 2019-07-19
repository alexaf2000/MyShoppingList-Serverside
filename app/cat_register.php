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
$subject = "Benvingut a MyShoppingList";
$message = "¡Hola $email! Gràcies per formar part de MyShoppingList, esperem que gaudeixis la teva estada amb nosaltres. Recorda recomanar l'app si t'ha agradat, t'ho agrairem moltissim. -Una cordial salutació, l'equip de MyShoppingList.";
$headers = "From: servei@myshoppinglist.cat" . "\r\n";
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