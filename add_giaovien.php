<?php
require 'connectMySQL.php';

header('Content-type: application/json');
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: X-Requested-With, content-type, access-control-allow-origin, access-control-allow-methods, access-control-allow-headers');
$request_body = file_get_contents('php://input');
$data = json_decode($request_body);
echo json_encode($request_body);

$query ="insert into giaovien values(
  null,
  '$data->tengv',
  '$data->diachi',
  '$data->email',
  '$data->id_chuyenmon'
  )";
if(mysqli_query($connect,$query)){
    echo"success";
}else{
    echo"error";
}
