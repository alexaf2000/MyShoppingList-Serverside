<?php
session_start();
?>

<?php require_once("includes/connection.php"); ?>
<?php include("includes/header.php"); ?>

<?php

if(isset($_SESSION["session_email"])){
// echo "Session is set"; // for testing purposes
header("Location: ./home");
}

if(isset($_POST["login"])){

if(!empty($_POST['email']) && !empty($_POST['password'])) {
    $email=$_POST['email'];
    $password=md5 ($_POST['password']);

    $query =mysql_query("SELECT * FROM users WHERE email='".$email."' AND password='".$password."' AND rank=1");

    $numrows=mysql_num_rows($query);
    if($numrows!=0)

    {
    while($row=mysql_fetch_assoc($query))
    {
    $dbemail=$row['email'];
    $dbpassword=$row['password'];
    }

    if($email == $dbemail && $password == $dbpassword)

    {


    $_SESSION['session_email']=$email;

    /* Redirect browser */
    header("Location: ./home");
    }
    } else {

 $message =  "Correo electrónico o contraseña invalida!";
    }

} else {
    $message = "Todos los campos son requeridos!";
}
}
?>




    <div class="container mlogin animated fadeIn">
            <div id="login">
    <h1>Panel de Administración</h1>
<form name="loginform" id="loginform" action="" method="POST">
    <p>
        <label for="user_login">Correo<br />
        <input type="text" name="email" id="email" class="input" value="" size="20" /></label>
    </p>
    <p>
        <label for="user_pass">Contraseña<br />
        <input type="password" name="password" id="password" class="input" value="" size="20" /></label>
    </p>
        <p class="submit">
        <input type="submit" name="login" class="button" value="Entrar" />
    </p>
</form>

    </div>

    </div>
	
	<?php include("includes/footer.php"); ?>
	
	<?php if (!empty($message)) {echo "<p class=\"error\">" . "¡Ups! ". $message . "</p>";} ?>
	