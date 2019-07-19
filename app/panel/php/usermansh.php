<?php
if (isset($_POST['show'])) {
    $link=mysql_connect("hl353.dinaserver.com","atrexinos","hcetigol");
    mysql_set_charset("UTF8", $link);
    mysql_select_db("appdb",$link) OR DIE ("Error: No es posible establecer la conexión");
    $id   = mysql_real_escape_string(htmlspecialchars(trim($_POST['id'])));
    $searchingaccount = mysql_query("SELECT users.name,users.surname,users.email,users.perm,users.rank,users.pwd_rec,users.last_change,users.cp,users.date,users.ip_address,users.last_ip,users.last_login FROM users WHERE users.id_user='$id' LIMIT 1");
    $array = mysql_fetch_row($searchingaccount);
    if ($array != 0) {
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}


if (isset($_POST['edus'])) {
    $link=mysql_connect("hl353.dinaserver.com","atrexinos","hcetigol");
    mysql_set_charset("UTF8", $link);
    mysql_select_db("appdb",$link) OR DIE ("Error: No es posible establecer la conexión");
    $id   = mysql_real_escape_string(htmlspecialchars(trim($_POST['id'])));
    $name   = mysql_real_escape_string(htmlspecialchars(trim($_POST['n'])));
    $surname   = mysql_real_escape_string(htmlspecialchars(trim($_POST['s'])));
    $email   = mysql_real_escape_string(htmlspecialchars(trim($_POST['e'])));
    $cp   = mysql_real_escape_string(htmlspecialchars(trim($_POST['c'])));
    $pwd_rec   = mysql_real_escape_string(htmlspecialchars(trim($_POST['p'])));
    $perm   = mysql_real_escape_string(htmlspecialchars(trim($_POST['perm'])));
    $rank   = mysql_real_escape_string(htmlspecialchars(trim($_POST['r'])));
    $updateinfo = mysql_query("UPDATE `appdb`.`users` SET `name` = '$name', `surname` = '$surname', `email` = '$email', `perm` = '$perm', `rank` = '$rank', `pwd_rec` = '$pwd_rec', `cp` = '$cp' WHERE `users`.`id_user` = '$id';");
    if ($updateinfo != 0) {
        $array = modificado;
        echo json_encode($array);
    } else {
        $array=failed;
        echo json_encode($array);
    }
}
?>