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
<body oncopy="return false" oncut="return false" onpaste="return false" ondragstart="return false;" ondrop="return false;">


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
            <li><a href="#">Gestor de usuarios</a><i class="ion-happy-outline"></i></li>
            <li><a href="../scanfail">Escaneos fallidos</a><i class="ion-archive"></i></li>
            <li><a href="../mail">Gestor de correo</a><i class="ion-android-mail"></i></li>
            <li><a href="https://phpadmin.dinaserver.com/index.php">Base de Datos</a><i class="ion-grid"></i></li>
        </ul>
</div>
<style type="text/css">
    



</style>
<div class="body">
    <h1>Gestor de usuarios</h1>
    <p class="descript">Gestiona a los usuarios de manera correcta, elimina cuentas, da permisos o realiza las modificaciones pertinentes.</p>

<div class="toadd">
    <table class="users">
        <tr class="head">
            <th>ID</th>
            <th>Nombre</th>
            <th>Direccion de correo electronico</th>
            <th>Modo Listadder</th>
            <th>Rango</th>
            <th>Codigo Postal</th>
            <th>Ultimo inicio de sesion</th>
        </tr>
        <?php
    $con=mysqli_connect("hl353.dinaserver.com","atrexinos","hcetigol","appdb");
     mysqli_set_charset($con, "utf8");
    // Check connection
    if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    $result = mysqli_query($con,"SELECT id_user,name,surname,email,perm,rank,cp,last_login FROM users");
    while($row = mysqli_fetch_array($result))
    {
        if ($row['perm']=='0') {
            $listadder = '<i class="ion-ios-close-empty nolistadder"></i>';
        } else if ($row['perm']=='1') {
            $listadder = '<i class="ion-ios-checkmark-empty listadder"></i>';
        };

        if ($row['rank']=='0') {
            $rank = 'Usuario';
        } else if ($row['rank']=='1') {
            $rank = 'Administrador';
        };
        echo '<tr class="userinfo" id="'. $row['id_user'] .'">';
        echo '<td>'. $row['id_user'] .'</td><td>'. $row['name'] .' '. $row['surname'] .'</td><td>'. $row['email'] .'</td>';
        echo '<td>';
        echo $listadder;
        echo '</td>';
        echo '<td>';
        echo $rank;
        echo '</td><td>'. $row['cp'] .'</td><td>'. $row['last_login'] .'</td>';
        echo '</tr>';
    }
    mysqli_close($con);
    ?>
    </table>
</div>
</div>


    <footer>

    </footer>
</body>
<script type="text/javascript">
    
$('body').bind('copy paste',function(e) {
    e.preventDefault(); return false; 
});

$(document).bind("contextmenu",function(e) {
 e.preventDefault();
});

$(document).keydown(function(e){
    if(e.which === 123){
       return false;
    }
});


            $(".userinfo").click(function() {
                if (document.querySelector('.boxmanuser') !== null) {
                    // .. it exists
                } else {
                    var id = $(this).attr('id');
                    var dataString = "id=" + id + "&show=";
                    $.ajax({
                        type: "POST",
                        url: "https://myshoppinglist.cat/app/panel/php/usermansh.php",
                        data: dataString,
                        crossDomain: true,
                        cache: false,
                        dataType: 'json',
                        beforeSend: function() {
                            $("body").append('<div class="spinner animated fadeIn"> <div class="spinner-wrapper"> <div class="rotator"> <div class="inner-spin"></div> <div class="inner-spin"></div> </div> </div> </div>');
                        },
                        error: function(XMLHttpRequest, textStatus, errorThrown) {
                            alert("Hi ha un problema amb la teva connexió.");
                            $(".spinner").remove();
                        },
                        success: function(data) {
                            $(".spinner").remove();
                            if (data != "failed") {
                                var name = data[0];
                                var surname = data[1];
                                var email = data[2];
                                var perm = data[3];
                                var rank = data[4];
                                var pwd_rec = data[5];
                                var last_change = data[6];
                                var cp = data[7];
                                var date = data[8];
                                var ip_address = data[9];
                                var last_ip = data[10];
                                var last_login = data[11];
                                $("body").append('<div class="boxmanuser edit animated zoomIn"><h2>Gestionar usuario<p>#' + id + '</p></h2><input type="text" name="name" placeholder="Nombre" value="' + name + '"> <input type="text" name="surname" placeholder="Apellidos" value="' + surname + '"> <input type="email" name="email" placeholder="Correo Electronico" value="' + email + '"><input type="text" name="passwordrecover" placeholder="Codigo de recuperacion" value="' + pwd_rec + '" maxlength="6"> <input type="number" name="cp" placeholder="Codigo Postal" value="' + cp + '"> <p>Creación cuenta: ' + date + '</p><p>Dirección IP: ' + ip_address + '</p><p>Ultimo cambio de contraseña: ' + last_change + '</p><p>Ultimo inicio de sesión: ' + last_login + '</p><p>Ultima Dirección IP: ' + last_ip + '</p><p>Rango</p> <p><input type="radio" name="rank" value="0" checked> Usuario <input type="radio" name="rank" value="1"> Administrador</p><p>Modo Listadder <input type="checkbox" name="listadder" checked></p> <button id="saveuserdata">Guardar</button><button onclick="closebox()">Cerrar</button> </div>');
                                if (perm == '1') {
                                    $("input[name='show_static_notify']").prop('checked', true);
                                }
                                if (perm == '0') {
                                    $("input[name='listadder']").prop('checked', false);
                                }
                                if (rank == '1') {
                                    $('input[name=rank][value=1]').attr('checked', 'checked');
                                }
                                if (rank == '0') {
                                    $('input[name=rank][value=0]').attr('checked', 'checked');
                                }
                            } else {
                                alert("Hi va haver un error en carregar el teu perfil-ho a provar més tard.");
                            }
                            $("#saveuserdata").click(function() {
                                var changedname = $("input[name=name]").val();
                                var changedsurname = $("input[name=surname]").val();
                                var changedpwd_rec = $("input[name=passwordrecover]").val();
                                var changedemail = $("input[name=email]").val();
                                var changedcp = $("input[name=cp]").val();
                                if ($('input[type=checkbox][name=listadder]').is(':checked')) {
                                    var changedperm = '1';
                                } else {
                                    var changedperm = '0';
                                }
                                var changedrank = $('input[name=rank]:checked').val();
                                var dataString = "id=" + id + "&n=" + changedname + "&s=" + changedsurname + "&p=" + changedpwd_rec + "&e=" + changedemail + "&c=" + changedcp + "&perm=" + changedperm + "&r=" + changedrank + "&edus=";
                                $.ajax({
                                    type: "POST",
                                    url: "https://myshoppinglist.cat/app/panel/php/usermansh.php",
                                    data: dataString,
                                    crossDomain: true,
                                    cache: false,
                                    dataType: 'json',
                                    beforeSend: function() {
                                        $("body").append('<div class="spinner animated fadeIn"> <div class="spinner-wrapper"> <div class="rotator"> <div class="inner-spin"></div> <div class="inner-spin"></div> </div> </div> </div>');
                                    },
                                    error: function(XMLHttpRequest, textStatus, errorThrown) {
                                        alert("Hi ha un problema amb la teva connexió.");
                                        $(".spinner").remove();
                                    },
                                    success: function(data) {
                                        $(".spinner").remove();
                                        if (data != "failed") {
                                        	alert ('Cambios realizados correctamente');
                                        	location.reload(true);
                                        }
                                    }
                                });

                            });
                        }
                    });
                }
            });


function closebox() {
     $(".boxmanuser").remove();
}







											
</script>
</html>

<?php
}
?>
