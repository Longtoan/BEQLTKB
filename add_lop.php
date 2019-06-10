<?php
require 'connectMySQL.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: X-Requested-With');
header('Access-Control-Max-Age: 86400');

if (strtolower($_SERVER['REQUEST_METHOD']) == 'options') {
    exit();
}
if (isset($HTTP_RAW_POST_DATA)) {
    $data = explode('&', $HTTP_RAW_POST_DATA);
    foreach ($data as $val) {
        if (!empty($val)) {
            list($key, $value) = explode('=', $val);   
            $_POST[$key] = urldecode($value);
        }
    }
}
echo 'Hello CORS, this is '
     . $_SERVER['SERVER_NAME'] . PHP_EOL
     .'You sent a '.$_SERVER['REQUEST_METHOD'] . ' request.' . PHP_EOL;
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    echo 'Your name is ' . htmlentities($_POST['name']);
}

$request_body = file_get_contents('php://input');   

$data = json_decode($json);

$query = "INSERT INTO lop VALUES ()";

$result = mysqli_query($connect, $query);




header('Content-Type: application/json');
// header("Location: index.php");
?>