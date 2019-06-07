<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';

$username = $_POST['username'];
$password = $_POST['password'];

$username = stripcslashes($username);
$password = stripcslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);


$query = " SELECT * from user-category where username = '$username' and password = '$password' ";
$result = mysqli_query($connect, $query);
$row = mysql_fetch_array($result);
if ($row['username'] == $username && $row['password'] == $password) {
    echo "Login success ";
} else {
    echo "failed";
}
?>
