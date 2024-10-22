<?php 
include_once '../config.php';
$id = $_GET['data'];
$sql = "DELETE FROM `testimonial_table` WHERE `id` = '$id'";
$res = mysqli_query($db,$sql);
header("location:testimonial_admin.php");


?>