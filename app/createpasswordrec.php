<?php
 header('Access-Control-Allow-Origin: *'); 
	if(isset($_POST['createpwd_rec'])) {	
		include("connection.php");
		$email=mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
		$mailexiste= mysql_query("SELECT email FROM users WHERE email = '$email'");
		if (mysql_num_rows($mailexiste) == 0) {
			echo "email_notfound";
		}
		else {
			$result= mysql_query("SELECT last_change FROM `users` WHERE `email`='$email'");
			$fecha = mysql_result($result, 0);
			$ahora=date("d-m-y H:i");
			$timediff = strtotime($ahora) - strtotime($fecha);
			if ($timediff > 60*4) {
				$caracteres = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"; //posibles caracteres a usar
				$numerodeletras=6; //numero de letras para generar el texto
				$cadena = ""; //variable para almacenar la cadena generada
					for($i=0;$i<$numerodeletras;$i++)	{
	    				$cadena .= substr($caracteres,rand(0,strlen($caracteres)),1); /*Extraemos 1 caracter de los caracteres 
						entre el rango 0 a Numero de letras que tiene la cadena */
					}
				$createpwd_rec=mysql_query("UPDATE users SET `pwd_rec`='$cadena' WHERE `email`='$email'");
				if($createpwd_rec!=0)	{
					mysql_query("UPDATE users SET `last_change`='$ahora' WHERE `email`='$email'");
					$to = "$email";
					$subject = "Recuperación de contraseña de MyShoppingList";
					$message = "¡Hola $email! Estamos encantados de verte por aquí de nuevo. Este es tu código de verificación para poder cambiar tu contraseña $cadena. Solo podrás utilizarlo durante las próximas 2 horas.";
					$headers = "From: servicio@myshoppinglist.cat" . "\r\n";
 
					mail($to, $subject, $message, $headers);
					echo "success";
				} 
				else {
					echo "already";
				}
			} 
			else {
			echo "timeon";
			}
		}
	}
?>