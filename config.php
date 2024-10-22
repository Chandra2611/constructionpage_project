<?php

$_base="fonicy";
$_server="localhost";
$_username="root";
$_password="";

$db =mysqli_connect($_server,$_username,$_password,$_base);
if(!$db){
    echo "not connected";
}

?>