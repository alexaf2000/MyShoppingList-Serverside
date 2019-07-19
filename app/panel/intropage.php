<?php 
session_start();
if(!isset($_SESSION["session_email"])) {
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
	<meta charset="utf-8">
</head>
<body>
	<nav>
		<h2 class="logo">MyShoppingList</h2>
		<h2 class="user">alex2andres@gmail.com</h2>
		<a class="exit" href="../logout.php">Salir</a>
	</nav>
<div class="left animated slideInLeft">
	<h1>Panel de Administracion</h1>
		<ul>
			<li><a href="#">Administrar nuevos productos</a></li>
			<li><a href="#">Gestor de usuarios</a></li>
		</ul>
</div>

<div class="body">
	<h1>Administrar nuevos productos</h1>
<div class="toadd">
	<div class="item animated bounceIn">
		<p>Añadido por... <br>alex2andres@gmail.com</p>
		<div class="imagenp" style="background-image: url(https://www.missupermercados.com/images/l/leche-entera-pack-ahorro-hacendado-brick-pack-12-x-1-l-12-l-pid-52627994.jpg)"></div>
		<h3>8435345345</h3>
		<h2 class="brand">Hacendado</h2>
		<h2 class="product">Brick de Leche 1 Litro especial</h2>
		<h2 class="size">2 Litros</h2>
	</div>
	<div class="item animated bounceIn">
		<p>Añadido por... <br>alex2andres@gmail.com</p>
		<div class="imagenp" style="background-image: url(https://www.missupermercados.com/images/l/leche-entera-pack-ahorro-hacendado-brick-pack-12-x-1-l-12-l-pid-52627994.jpg)"></div>
		<h3>8435345345</h3>
		<h2 class="brand">Hacendado</h2>
		<h2 class="product">Brick de Leche 1 Litro especial</h2>
		<h2 class="size">2 Litros</h2>
	</div>
	<div class="item animated bounceIn">
		<p>Añadido por... <br>alex2andres@gmail.com</p>
		<div class="imagenp" style="background-image: url(https://www.missupermercados.com/images/l/leche-entera-pack-ahorro-hacendado-brick-pack-12-x-1-l-12-l-pid-52627994.jpg)"></div>
		<h3>8435345345</h3>
		<h2 class="brand">Hacendado</h2>
		<h2 class="product">Brick de Leche 1 Litro especial super guay</h2>
		<h2 class="size">2 Litros</h2>
	</div>
	<div class="item animated bounceIn">
		<p>Añadido por... <br>alex2andres@gmail.com</p>
		<div class="imagenp" style="background-image: url(https://www.missupermercados.com/images/l/leche-entera-pack-ahorro-hacendado-brick-pack-12-x-1-l-12-l-pid-52627994.jpg)"></div>
		<h3>8435345345</h3>
		<h2 class="brand">Hacendado</h2>
		<h2 class="product">Brick de Leche 1 Litro especial</h2>
		<h2 class="size">2 Litros</h2>
	</div>
	<div class="item animated bounceIn">
		<p>Añadido por... <br>alex2andres@gmail.com</p>
		<div class="imagenp" style="background-image: url(https://www.missupermercados.com/images/l/leche-entera-pack-ahorro-hacendado-brick-pack-12-x-1-l-12-l-pid-52627994.jpg)"></div>
		<h3>8435345345</h3>
		<h2 class="brand">Hacendado</h2>
		<h2 class="product">Brick de Leche 1 Litro especial</h2>
		<h2 class="size">2 Litros</h2>
	</div>
	<div class="item animated bounceIn">
		<p>Añadido por... <br>alex2andres@gmail.com</p>
		<div class="imagenp" style="background-image: url(https://www.missupermercados.com/images/l/leche-entera-pack-ahorro-hacendado-brick-pack-12-x-1-l-12-l-pid-52627994.jpg)"></div>
		<h3>8435345345</h3>
		<h2 class="brand">Hacendado</h2>
		<h2 class="product">Brick de Leche 1 Litro especial</h2>
		<h2 class="size">2 Litros</h2>
	</div>
	<div class="item animated bounceIn">
		<p>Añadido por... <br>alex2andres@gmail.com</p>
		<div class="imagenp" style="background-image: url(https://www.missupermercados.com/images/l/leche-entera-pack-ahorro-hacendado-brick-pack-12-x-1-l-12-l-pid-52627994.jpg)"></div>
		<h3>8435345345</h3>
		<h2 class="brand">Hacendado</h2>
		<h2 class="product">Brick de Leche 1 Litro especial</h2>
		<h2 class="size">2 Litros</h2>
	</div>

</div>
</div>

	<footer>
		
	</footer>
</body>
</html>

<?php
}
?>
