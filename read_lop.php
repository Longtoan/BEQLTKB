<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
    class lop{
        function lop($id_lop,$ten,$khoi){
            $this->id_lop=$id_lop;
            $this->tenlop=$ten;
            $this->khoi = $khoi;

        }
    }
    $query ="select * from class";
 
    $result =mysqli_query($connect,$query);
    $mangketqua = array();
    while($dong =mysqli_fetch_assoc($result)){
        array_push($mangketqua,new lop($dong['id_lop'],$dong['tenlop'],$dong['khoi']));
    }
        echo json_encode($mangketqua);
?>