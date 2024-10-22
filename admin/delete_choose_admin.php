<?php 
include_once '../config.php';
$id = $_GET['data'];
$sql = "DELETE FROM `choose_table` WHERE `id` = '$id'";
$res = mysqli_query($db,$sql);
header("location:choose_admin.php");


?>