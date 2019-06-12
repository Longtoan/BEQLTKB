<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
class lop
{
    function lop($id_lop,  $tenhs, $gioitinh, $ngaysinh, $dantoc, $noisinh)
    {
        $this->id_lop = $id_lop;

        $this->tenhs = $tenhs;
        $this->gioitinh = $gioitinh;
        $this->ngaysinh = $ngaysinh;
        $this->dantoc = $dantoc;
        $this->noisinh = $noisinh;
    }
}
$query = "
    select distinct a.id_lop, a.tenlop, b.tenhs,b.gioitinh,b.ngaysinh,b.dantoc,b.noisinh
    from class a, hocsinh b 
    where a.id_lop =b.id_lop and a.id_lop=$_GET[id_lop]
    ";

$result = mysqli_query($connect, $query);
$mangketqua = array();
while ($dong = mysqli_fetch_assoc($result)) {
    array_push($mangketqua, new lop(
        $dong['id_lop'],
        $dong['tenhs'],
        $dong['gioitinh'],
        $dong['ngaysinh'],
        $dong['dantoc'],
        $dong['noisinh']
    ));
}
echo json_encode($mangketqua);
