<?php 
include_once '../config.php';
$id = $_GET['data'];
$sql = "DELETE FROM `about_table` WHERE `id` = '$id'";
$res = mysqli_query($db,$sql);
header("location:about_admin.php");


?>