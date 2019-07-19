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
            <li><a href="#">Escaneos fallidos</a><i class="ion-archive"></i></li>
            <li><a href="../mail">Gestor de correo</a><i class="ion-android-mail"></i></li>
            <li><a href="https://phpadmin.dinaserver.com/index.php">Base de Datos</a><i class="ion-grid"></i></li>
        </ul>
</div>

<div class="body">
    <h1>Escaneos fallidos</h1>
    <p class="descript">Cuando un usuario normal escanee un producto y no se encuentre en nuestra base de datos irá aquí. Tu decides si añadir el producto.</p>

<div class="toadd">
<div id="construction" style="margin: auto;"></div>
<h2 style="color: black;text-align: center;">Sección en construcción.</h2>
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

</script>
</html>

<?php
}
?>