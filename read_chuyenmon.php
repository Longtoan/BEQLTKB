<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
class lop
{
    function lop($id_mon, $tenmon)
    {
        $this->id_mon = $id_mon;
        $this->tenmon = $tenmon;
    }
}
$query = "
select a.id_mon, tenmon
    from mon a, giaovien b
    where a.id_mon = b.id_chuyenmon
    ";

$result = mysqli_query($connect, $query);
$mangketqua = array();
while ($dong = mysqli_fetch_assoc($result)) {
    array_push($mangketqua, new lop($dong['id_mon'], $dong['tenmon']));
}
echo json_encode($mangketqua);
