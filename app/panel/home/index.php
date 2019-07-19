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
        <a class="exit" href="../logout.php">Salir</a>
    </nav>
<div class="left animated slideInLeft">
    <h1>Panel de Administración <i class="ion-speedometer"></i></h1>
        <ul>
            <li><a href="#">Administrar nuevos productos</a><i class="ion-share"></i></li>
            <li><a href="./users">Gestor de usuarios</a><i class="ion-happy-outline"></i></li>
            <li><a href="./scanfail">Escaneos fallidos</a><i class="ion-archive"></i></li>
            <li><a href="./mail">Gestor de correo</a><i class="ion-android-mail"></i></li>
            <li><a href="https://phpadmin.dinaserver.com/index.php">Base de Datos</a><i class="ion-grid"></i></li>
        </ul>
</div>

<div class="body">
    <h1>Administrar nuevos productos</h1>
    <p class="descript">Los usuarios Listadders son capaces de sugerir nuevos productos para nuestra base de datos, da tu visto bueno y añade una fotografía.</p>
<input type="text" name="search" id="searchbox" placeholder="Buscar marca">
<div class="searchcontent"></div>
<div class="toadd">
	<?php
	$con=mysqli_connect("hl353.dinaserver.com","atrexinos","hcetigol","appdb");
	 mysqli_set_charset($con, "utf8");
	// Check connection
	if (mysqli_connect_errno())
	{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$result = mysqli_query($con,"SELECT * FROM addp");
	while($row = mysqli_fetch_array($result))
	{
		echo '<div class="item animated bounceIn">';
        echo '<p>Añadido por... <br>' . $row['user'] . '</p>';
        echo '<div class="imagenp" id="test" style="background-image: url(/app/images/' . $row['barcode'] . '.png)">';
        echo "<img style='display: none;' src='/app/images/". $row['barcode'] .".png'></div>";
        echo '<h3>' . $row['barcode'] . '</h3>';
        echo '<h2 class="brand">' . $row['brand'] . '</h2>';
        echo '<h2 class="product">' . $row['product_name'] . '</h2>';
        echo '<h2 class="size">' . $row['size'] . '</h2>';
        echo '<a class="chngimage" href="javascript:;" id='. $row['barcode'] .'>Modificar Imagen</a>';
        echo '<a class="aprob" href="#" id='. $row['id_add'] .'><i class="ion-checkmark-circled"></i></a>';
        echo '<a class="erase" href="#" id='. $row['id_add'] .'><i class="ion-trash-a"></i></a>';
        echo '<a class="modify" href="#" id='. $row['id_add'] .'>Editar</a>';
    	echo '</div>';
	}
	mysqli_close($con);
	?>

</div>
</div>

    <footer>

    </footer>
</body>
<script type="text/javascript">
    
$(".chngimage").click(function() {
    if (document.querySelector('.boxmodifyimage') !== null) {
        // .. it exists
    } else {
        var id = $(this).attr('id');
        $("body").append('<div class="boxmodifyimage animated zoomIn"><p>Modifica la imagen</p><form enctype="multipart/form-data" action="../php/upload.php" method="POST"><input name="uploadedfile" type="file" /><input type="submit" value="Subir archivo" /><input id="barcode" name="barcode" type="hidden" value="' + id + '"/></form><button id="closeupload">Cerrar</button></div>');
    }
    $("#closeupload").click(function() {
        $(".boxmodifyimage").remove();
    });

});

$(".aprob").click(function() {
    if (document.querySelector('.toclose') !== null) {
        // .. it exists
    } else {
        var id = $(this).attr('id');
        $("body").append('<div class="boxmodifyimage animated zoomIn toclose" id="' + id + '"><p>Añadir producto.</p><input type="radio" name="idioma" value="es">Español  <input type="radio" name="idioma" value="cat">Catala<br><button class="adddb" id="' + id + '">Añadir</button><button onclick="closebox();">Cerrar</button></div>');
    }
    $(".adddb").click(function() {
        var id = $(this).attr("id");
        var idioma = $('input[name=idioma]:checked').val();
        var dataString = "id=" + id + "&idioma="+ idioma + "&add=";
        $.ajax({
                type: "POST",
                url: "https://myshoppinglist.cat/app/panel/php/addp.php",
                data: dataString,
                crossDomain: true,
                cache: false,
                dataType: 'json',
                beforeSend: function(){ $("body").append('<div class="spinner animated fadeIn"> <div class="spinner-wrapper"> <div class="rotator"> <div class="inner-spin"></div> <div class="inner-spin"></div> </div> </div> </div>');},
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert("Hi ha un problema amb la teva connexió.");
                    $(".spinner").remove();
                },
                success: function(data) {
                    $(".spinner").remove();
                    if (data === "added") {
                    	alert ('Añadido correctamente a la base de datos.');
                    } 
                    else if (data == "exists") {
                        alert ('El producto ya existe en la base de datos.')
                    }
                    else if (data == "marcacreada") {
                        alert ('Se ha creado correctamente la marca del producto, recarga la pagina e intenta añadir el producto de nuevo.')
                    }
                    else if (data == "marcanoexistefail") {
                        alert ('Ha habido un error al crear la marca del producto.')
                    }
                    else {
                        alert("Hi va haver un error torna a provar més tard.");
                    }
                }
            });
    });
});


$(".erase").click(function() {
    if (document.querySelector('.toclose') !== null) {
        // .. it exists
    } else {
        var id = $(this).attr('id');
        $("body").append('<div class="boxmodifyimage animated zoomIn toclose" id="' + id + '"><p>¿Deseas eliminar este producto?</p><button class="adddb" id="' + id + '">Eliminar</button><button onclick="closebox();">Cerrar</button></div>');
    }
    $(".adddb").click(function() {
        var id = $(this).attr("id");
        var dataString = "id=" + id + "&delete=";
        $.ajax({
                type: "POST",
                url: "https://myshoppinglist.cat/app/panel/php/addp.php",
                data: dataString,
                crossDomain: true,
                cache: false,
                dataType: 'json',
                beforeSend: function(){ $("body").append('<div class="spinner animated fadeIn"> <div class="spinner-wrapper"> <div class="rotator"> <div class="inner-spin"></div> <div class="inner-spin"></div> </div> </div> </div>');},
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert("Hi ha un problema amb la teva connexió.");
                    $(".spinner").remove();
                },
                success: function(data) {
                    $(".spinner").remove();
                    if (data != "failed") {
                    	alert ('Eliminado correctamente');
                    } 
                    else {
                        alert("Hi va haver un error torna a provar més tard.");
                    }
                }
            });
    });
});


				$(".modify").click(function() {
                if (document.querySelector('.boxmanuser') !== null) {
                    // .. it exists
                } else {
                    var id = $(this).attr('id');
                    var dataString = "id=" + id + "&show=";
                    $.ajax({
                        type: "POST",
                        url: "https://myshoppinglist.cat/app/panel/php/addp.php",
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
                                var id = data[0];
                                var productname = data[1];
                                var brand = data[2];
                                var size = data[3];
                                var barcode = data[4];
                                var user = data[5];
                                $("body").append('<div class="boxmanuser animated zoomIn toclose"><h2>Editar producto<p>#' + id + '</p></h2><input type="text" name="productname" placeholder="Nombre de producto" value="' + productname + '"> <input type="text" name="brand" placeholder="Marca" value="' + brand + '"> <input type="text" name="size" placeholder="Tamaño" value="' + size + '"><p>Codigo de barras: ' + barcode + '</p><p>Publicado por: ' + user + '</p><img alt="(Imagen)" style="max-width:95px;max-height:95px;position:absolute;top:35px;right:35px;" src="https://myshoppinglist.cat/app/images/'+barcode+'.png"> <button id="saveproductdata">Guardar</button><button onclick="closebox()">Cerrar</button> </div>');
                            } else {
                                alert("Hi va haver un error en carregar el teu perfil-ho a provar més tard.");
                            }
                            $("#saveproductdata").click(function() {
                                var changedproduct = $("input[name=productname]").val();
                                var changedbrand = $("input[name=brand]").val();
                                var changedsize = $("input[name=size]").val();
                                var dataString = "id=" + id + "&pr=" + changedproduct + "&br=" + changedbrand + "&siz=" + changedsize + "&chang=";
                                $.ajax({
                                    type: "POST",
                                    url: "https://myshoppinglist.cat/app/panel/php/addp.php",
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
    $(".toclose").remove();
}


          $("#searchbox").on('keyup', function() {
              var key = $(this).val();
              if ($.trim($("#searchbox").val()) == '') {
                  $(".searchitem").remove();
              } else {
                  var url = "https://myshoppinglist.cat/app/panel/php/searchbrand.php?search=" + key + "";
                  var json = $.getJSON(url, function(result) {
                      console.log(result);
                      $(".searchitem").remove();
                      $.each(result, function(i, field) {
                          var brand = field.brand_name;
                          var searchproduct = $(".searchcontent").append("<div class='searchitem'><p>"+brand+"</p></div>");
                          $("div.searchitem").hide().show("fast");
                      });
                  })
              };
          });
</script>
<style type="text/css">

</style>
</html>

<?php
}
?>