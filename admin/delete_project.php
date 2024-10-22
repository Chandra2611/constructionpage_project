<?php 
include_once '../config.php';
session_start();
$id = $_GET['data'];
$sql = "DELETE FROM `project_table` WHERE `id` = '$id'";
$res = mysqli_query($db,$sql);
header("location:projects_admin.php");


?>