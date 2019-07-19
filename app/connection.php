<?
 header('Access-Control-Allow-Origin: *'); 
	$link=mysql_connect("hl353.dinaserver.com","atrexinos","hcetigol");
	mysql_set_charset("UTF8", $link);
	mysql_select_db("appdb",$link) OR DIE ("Error: No es posible establecer la conexión");
?>
