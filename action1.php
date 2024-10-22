<?php
include_once 'config.php';
if(isset($_POST['submit1'])){
    $emailid = $_POST['emailid'];


    $sql = "INSERT INTO `foncyprj_email_upload` (`email`) VALUES ('$emailid')";
    $res=mysqli_query($db,$sql);
    header("location:index.php");
}


?>