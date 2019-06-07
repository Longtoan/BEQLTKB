<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
$id_giaovien = mysqli_real_escape_string($connect, $_REQUEST['id_giaovien']);
$tengv = mysqli_real_escape_string($connect, $_REQUEST['tengv']);
$ngaysinh = mysqli_real_escape_string($connect, $_REQUEST['ngaysinh']);
$diachi = mysqli_real_escape_string($connect, $_REQUEST['diachi']);
$email = mysqli_real_escape_string($connect, $_REQUEST['mail']);
$chuyenmon = mysqli_real_escape_string($connect, $_REQUEST['id_chuyenmon']);

$query = "INSERT INTO giaovien(id_giaovien,tengv,ngaysinh,diachi,mail,id_chuyenmon) VALUES (
    $id_giaovien, $tengv, $ngaysinh, $diachi, $email, $chuyenmon
) ";


$result = mysqli_query($connect, $query);   
?>



