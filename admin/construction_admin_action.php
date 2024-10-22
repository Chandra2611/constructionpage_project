<?php 
include_once '../config.php';
session_start();
$username = "";
if (isset($_SESSION['username'])) {
    $username = $_SESSION['username'];
if(isset($_POST['submit'])){
    $heading = $_POST['heading'];

    $sql = "INSERT INTO `construction_table` (`heading`) VALUES ('$heading'); ";
    $res = mysqli_query($db,$sql);
    header("location:construction_admin.php");
}

?>
<?php } else { ?>
  <script>
    window.location.href = 'login.php';
  </script>;
<?php  } ?>