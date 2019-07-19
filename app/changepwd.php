<?php
 header('Access-Control-Allow-Origin: *'); 
if (isset($_POST['change_pwd'])) {
	include ("connection.php");

	$pwd_rec = mysql_real_escape_string(htmlspecialchars(trim($_POST['pwd_rec'])));
	if ($pwd_rec == '') {
		echo "pwd_rec_blank";
	}
	else {
		$password = mysql_real_escape_string(htmlspecialchars(trim($_POST['password'])));
		$email = mysql_real_escape_string(htmlspecialchars(trim($_POST['email'])));
		$result = mysql_query("SELECT pwd_rec FROM `users` WHERE `email`='$email'");
		$field = mysql_result($result, 0);
		$mailexiste = mysql_query("SELECT email FROM users WHERE email = '$email'");
		if (mysql_num_rows($mailexiste) == 0) {
			echo "email_notfound";
		}
		else {
			if ($field == $pwd_rec) {
				$change_pwd = mysql_query("UPDATE users SET `password`='$password' WHERE `email`='$email'");
				if ($change_pwd != 0) {
					mysql_query("UPDATE users SET `pwd_rec`='' WHERE `email`='$email'");
					echo "success";
				}
				else {
					echo "failed";
				}
			}
			else {
				echo "denied";
			}
		}
	}
}

?>