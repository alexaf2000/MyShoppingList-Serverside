<?php
session_start();
if (!isset($_SESSION["session_email"])) {
    header("location:../");
} else {

?>


<!DOCTYPE html>
<html>
<head>
    <title>Administracion MyShoppingList</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="/files/css/animate.css" rel="stylesheet">
    <link href="/files/css/panel.css" rel="stylesheet">
    <link rel='stylesheet' href='/files/fonts/ionicons/css/ionicons.min.css' type='text/css' media='all' />
    <link rel="icon" href="/files/images/favicon.png"/>
    <script src="/files/js/jquery-2.1.4.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <nav>
        <h2 class="logo">MyShoppingList</h2>
        <?php 
        $email= $_SESSION['session_email'];
        echo "<h2 class='user'>$email</h2>";
        ?>
        <a class="exit" href="../../logout.php">Salir</a>
    </nav>
<div class="left animated slideInLeft">
    <h1>Panel de Administracion <i class="ion-speedometer"></i></h1>
        <ul>
            <li><a href="../">Administrar nuevos productos</a><i class="ion-share"></i></li>
            <li><a href="../users">Gestor de usuarios</a><i class="ion-happy-outline"></i></li>
            <li><a href="../scanfail">Escaneos fallidos</a><i class="ion-archive"></i></li>
            <li><a href="#">Gestor de correo</a><i class="ion-android-mail"></i></li>
            <li><a href="https://phpadmin.dinaserver.com/index.php">Base de Datos</a><i class="ion-grid"></i></li>
        </ul>
</div>

<div class="body">
    <h1>Gestor de Correo Electronico</h1>
    <p class="descript">Envia correos electronicos desde la direccion personal de MyShoppingList.</p>
    <h1><i class="ion-android-mail"></i></h1>

<div class="toadd">
	<img style="width: 65px;" src="https://myshoppinglist.cat/files/images/favicon.png"><br><br>
	<form id="enviarmail">
    <select form="enviarmail" name="re">
      <option value="soporte">soporte</option>
      <option value="suport">suport</option>
      <option value="servicio">servicio</option>
      <option value="servei">servei</option>
    </select>
    <br>
    <br>
    <input type="text" maxlength="40" name="asunto" placeholder="Asunto" style="width: 125px;">
    <br><br>
    <input type="email" name="destinatario" placeholder="Correo electronico destino" style="width: 210px;">
    <textarea name="texto" form="enviarmail" style="width: 100%;min-width: 100%;max-width: 100%;font-family: Arial;margin-top: 25px;min-height: 200px;resize: none;" placeholder="Introduce tu mensaje..."></textarea>
</form>
<button id="sendmail">Enviar</button>
</div>
</div>

    <footer>

    </footer>
</body>
<script type="text/javascript">
    

            $( ".chngimage" ).click(function() {
if (document.querySelector('.boxmodifyimage') !== null) {
    // .. it exists
} else {
    var id = $(this).attr('id');
    $("body").append('<div class="boxmodifyimage animated bounceIn"><p>Modifica la imagen</p><form enctype="multipart/form-data" action="../php/upload.php" method="POST"><input name="uploadedfile" type="file" /><input type="submit" value="Subir archivo" /><input id="barcode" name="barcode" type="hidden" value="'+id+'"/></form><button id="closeupload">Cerrar</button></div>');
}       
$( "#closeupload" ).click(function() {
  $(".boxmodifyimage").remove();
});

              });


$('#enviarmail').on('submit', function(e) {
    e.preventDefault(); //Prevents default submit
    var form = $(this); 
    var post_url = form.attr('action'); 
    var post_data = form.serialize(); //Serialized the form data for process.php
    $.ajax({
        type: 'POST',
        url: '../../php/mailto.php', // Your form script
        data: post_data,
        success: function(msg) {
            $(form).fadeOut(500, function(){
                form.html(msg).fadeIn();
            });
        }
    });
});



$("#sendmail").click(function() {
        var re = $("select[name='re']").val();
        var destinatario = $("input[name='destinatario']").val();
        var texto = $("textarea[name='texto']").val();
        var asunto = $("input[name='asunto']").val();
        var dataString = "re=" + re + "&destinatario=" + destinatario + "&texto=" + texto + "&asunto=" + asunto + "&mailto=";
        $.ajax({
                type: "POST",
                url: "https://myshoppinglist.cat/app/panel/php/mailto.php",
                data: dataString,
                crossDomain: true,
                cache: false,
                dataType: 'json',
                beforeSend: function(){ $("body").append('<div class="spinner animated fadeIn"> <div class="spinner-wrapper"> <div class="rotator"> <div class="inner-spin"></div> <div class="inner-spin"></div> </div> </div> </div>');},
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    $(".spinner").remove();
                },
                success: function(data) {
                    $(".spinner").remove();
                    if (data != "failed") {
               		alert ('Bien')
                    } 
                    else {
                        alert("Ha habido un error, prueba de nuevo mas tarde.");
                    }
                }
            });
    });
</script>
</html>

<?php

}
?>