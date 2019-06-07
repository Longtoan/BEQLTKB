<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
class giaovien
{
    function giaovien($id_giaovien, $tengv, $ngaysinh, $diachi, $email, $chuyenmon)
    {
        $this->id_giaovien = $id_giaovien;
        $this->tengv = $tengv;
        $this->ngaysinh = $ngaysinh;
        $this->diachi = $diachi;
        $this->mail = $email;

        $this->tenmon = $chuyenmon;
    }
}
$query = "SELECT a.tengv, a.id_chuyenmon, a.ngaysinh,a.diachi,a.mail, b.id_mon, b.tenmon,a.id_giaovien
 FROM giaovien a, mon b 
 where a.id_chuyenmon = b.id_mon ";

$result = mysqli_query($connect, $query);
$mangketqua = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($mangketqua, new giaovien($row['id_giaovien'], $row['tengv'], $row['ngaysinh'], $row['diachi'], $row['mail'], $row['tenmon']));
}
echo json_encode($mangketqua);
