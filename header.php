<?php 


session_start();
error_reporting( error_reporting() & ~E_NOTICE );//ปิดerror ที่ต้องใส่ @
//print_r($_SESSION);
//echo count($_SESSION['cart']);//แสดงจำนวนข้อมูลที่อยู่ใน ayrray

include('condb.php');

if(! empty($_SESSION['c_id'])){

$c_id=$_SESSION['c_id'];



$query_cus = " SELECT * FROM tbl_customer WHERE c_id = $c_id" or die
("Error : ".mysqlierror($query_cus));
$rs_cus = mysqli_query($condb, $query_cus);
$row_cus=mysqli_fetch_array($rs_cus);

$c_name=$row_cus['c_name'];
$c_surname=$row_cus['c_surname'];
}
//($row_member);

//print_r($row_member);


?>


<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!--     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.2.1/darkly/bootstrap.min.css"> -->
        <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="css/bootnavbar.css">
        <link href="https://fonts.googleapis.com/css?family=Kanit:400" rel="stylesheet">
        <title>ร้านธรรมโอสถ</title>
    </head>  


    <style type="text/css">
    @media print{
        .btn{
           display: none; /* ซ่อน  */
        }
    }

    body {
      font-family: 'Kanit', sans-serif;
      
      /*font-size: 14px;*/
    }
</style>
    <body>






