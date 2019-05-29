<?php
header('Access-Control-Allow-Origin: *');
require 'connectMySql.php';
    class giaovien{
        function giaovien($id_giaovien,$tengv,$ngaysinh)
        {
            $this->id_giaovien=$id_giaovien;
            $this->tengv= $tengv;
            $this->ngaysinh = $ngaysinh;
            // $this->diachi = $diachi;
            // $this->mail = $mail;
            // $this->chuyenmon = $chuyenmon;

        }
    }
    $query = "SELECT * FROM giaovien";
 
    $result =mysqli_query($connect,$query);
    $mangketqua = array();
    while($dong =mysqli_fetch_assoc($result)){
        array_push($mangketqua,new giaovien($dong['id_giaovien'],$dong['tengv'],$dong['ngaysinh']));
    }
        echo json_encode($mangketqua);
?>