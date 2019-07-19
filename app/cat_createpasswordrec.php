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
					$subject = "Recuperació de contrasenya de MyShoppingList";
					$message = "¡Hola $email! Estem encantats de veure't per aquí de nou. Aquest és el teu codi de verificació per poder canviar la contrasenya $cadena. Només podràs fer-ho servir durant les properes 2 hores.";
					$headers = "From: servei@myshoppinglist.cat" . "\r\n";
 
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