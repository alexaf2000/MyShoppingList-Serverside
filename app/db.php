<?php
 header('Access-Control-Allow-Origin: *'); 
 $con = mysqli_connect("hl353.dinaserver.com","atrexinos","hcetigol","appdb") or die ("could not connect database");
 mysqli_set_charset($con, "utf8");
?>