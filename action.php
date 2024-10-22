<?php 
include_once 'config.php';

if(isset($_POST['submit'])){
    // Fetch input values
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $priority = isset($_POST['priority']) ? $_POST['priority'] : null; // Priority may or may not be set
    $id = isset($_POST['id']) ? $_POST['id'] : null; // ID may or may not be set

    // Check if all required fields for insert are present
    if(!empty($name) && !empty($phone) && !empty($email) && !empty($message)) {
        // Check if a record with this email already exists
        $check_query = "SELECT * FROM `fonicy_prj` WHERE `email`='$email'";
        $check_result = mysqli_query($db, $check_query);

        if(mysqli_num_rows($check_result) == 0) {
            // No record exists with this email, perform INSERT
            $sql = "INSERT INTO `fonicy_prj` (`name`, `number`, `email`, `message`, `priority`) 
                    VALUES ('$name', '$phone', '$email', '$message', '$priority')";
            $res = mysqli_query($db, $sql);

            if($res) {
                echo "Record inserted successfully!";
                // Optionally redirect after successful insert
                header("location:index.php");
                exit();
                
            } else {
                echo "Error inserting record: " . mysqli_error($db);
            }
        } else {
            echo "Record with this email already exists. Consider updating instead.";
        }
    } elseif(!empty($priority) && !empty($id)) {
        // If priority and id are provided, perform an UPDATE
        $sql = "UPDATE `fonicy_prj` SET `priority`='$priority' WHERE `id`='$id'";
        $res = mysqli_query($db, $sql);

        if($res) {
            echo "Record updated successfully!";
            // Optionally redirect after update
             header("location:admin/datatable.php");
            exit();
        } else {
            echo "Error updating record: " . mysqli_error($db);
        }
    } else {
        echo "Required fields are missing for both insert and update operations.";
    }
}
?>
