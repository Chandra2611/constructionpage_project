<?php
include_once '../config.php';
$id = $_GET['id'];
$status = $_GET['status'];
$sql = "UPDATE `service_table` SET `status` = '$status' WHERE `id` = $id";
$res = mysqli_query($db,$sql);
header("location:service_admin.php");