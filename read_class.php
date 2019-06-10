<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';

    class lop{
        function lop($tenlop,$tenkhoi,$id_khoi){
            $this->tenlop = $tenlop;
            $this->tenkhoi = $tenkhoi;  
            $this->id_khoi = $id_khoi;
        }
    }
    $query ="
    SELECT class.tenlop, class.id_khoi, khoi.tenkhoi from khoi, class WHERE khoi.id_khoi = class.id_khoi
    ";
    $result =mysqli_query($connect,$query);
    $mangketqua = array();
    while($dong =mysqli_fetch_assoc($result)){
        array_push($mangketqua,new lop($dong['tenlop'],$dong['tenkhoi'],$dong['id_khoi']));
    }
        echo json_encode($mangketqua);
?>