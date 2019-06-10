<?php
require 'connectMySQL.php';



header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
$request_body = file_get_contents('php://input');


$data = json_decode($request_body);

$query = "DELETE FROM `giaovien` WHERE id_giaovien = $_GET[id_giaovien]";
$result = mysqli_query($connect, $query);




header('Content-Type: application/json');
header("Location: index.php");
