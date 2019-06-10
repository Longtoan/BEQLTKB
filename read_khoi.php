<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
class lop
{
    function lop($id_khoi, $tenkhoi)
    {
        $this->id_khoi = $id_khoi;
        $this->tenkhoi = $tenkhoi;
    }
}
$query = "
select a.id_khoi, tenkhoi
    from class a, khoi b
    where a.id_khoi = b.id_khoi
    ";

$result = mysqli_query($connect, $query);
$mangketqua = array();
while ($dong = mysqli_fetch_assoc($result)) {
    array_push($mangketqua, new lop($dong['id_khoi'], $dong['tenkhoi']));
}
echo json_encode($mangketqua);
