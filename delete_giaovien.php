<?php
require 'connectMySQL.php';
header('Content-type: application/json');
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: X-Requested-With, content-type, access-control-allow-origin, access-control-allow-methods, access-control-allow-headers');
$request_body = file_get_contents('php://input');

$data = json_decode($request_body);
$query = "DELETE FROM `giaovien` WHERE id_giaovien = $_GET[id_giaovien]";

if(mysqli_query($connect,$query)){
    echo"success";
}else{
    echo"error";
}

