<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
class lop
{
    function lop($id_lop, $ten, $tenhs)
    {
        $this->id_lop = $id_lop;
        $this->tenlop = $ten;
        $this->tenhs = $tenhs;
    }
}
$query = "
    select distinct a.id_lop, b.tenhs, a.tenlop 
    from class a, hocsinh b 
    where a.id_lop =b.id_lop and a.id_lop=$_GET[id_lop]
    ";

$result = mysqli_query($connect, $query);
$mangketqua = array();
while ($dong = mysqli_fetch_assoc($result)) {
    array_push($mangketqua, new lop($dong['id_lop'], $dong['tenlop'], $dong['tenhs']));
}
echo json_encode($mangketqua);
