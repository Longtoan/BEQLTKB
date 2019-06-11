<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';

    class lop{
        function lop($tenlop,$id_khoi,$id_lop){
            $this->tenlop = $tenlop;
            
            $this->id_khoi = $id_khoi;
            $this->id_lop = $id_lop;

        }
    }
    $query ="
    SELECT b.id_lop, b.tenlop, b.id_khoi from khoi a, class b WHERE b.id_khoi = a.id_khoi
    ";
    $result =mysqli_query($connect,$query);
    $mangketqua = array();
    while($dong =mysqli_fetch_assoc($result)){
        array_push($mangketqua,new lop($dong['tenlop'],$dong['id_khoi'],$dong['id_lop']));
    }
        echo json_encode($mangketqua);
