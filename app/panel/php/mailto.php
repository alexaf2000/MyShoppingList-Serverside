<?php 
if(isset($_POST['mailto'])) {
    include("../../connection.php");
    $re=mysql_real_escape_string(htmlspecialchars(trim($_POST['re'])));
    $destinatario=mysql_real_escape_string(htmlspecialchars(trim($_POST['destinatario'])));
    $texto=($_POST['texto']);
    $asunto=mysql_real_escape_string(htmlspecialchars(trim($_POST['asunto'])));
    $to = "$destinatario";
    $subject = "$asunto";
    $headers = "From:$re@myshoppinglist.cat" . "\r\n";
    $mail=mail($to, $subject, $texto, $headers);
    if ($mail!=0){
    echo success;} 
    else {
    echo failed;
    }
}

 ?>