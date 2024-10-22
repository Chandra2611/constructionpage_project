<?php
include_once '../config.php';
session_start();
$username = "";
if (isset($_SESSION['username'])) {
  $username = $_SESSION['username'];


if (isset($_POST['submit'])) {
    // Initialize an array to hold any validation errors
    $errors = [];

    // Retrieve and sanitize form inputs
    $id = $_POST['id'];
    $category = trim($_POST['category']);
    $heading = trim($_POST['heading']);
    $content = trim($_POST['content']);
    

    // Validate Name (required and only letters)
   

    // Handle Image Upload
    $photo = $_FILES['img']['name'];
    $photo_temp = $_FILES['img']['tmp_name'];
    $upload_dir = "upload/";

    // Ensure the upload directory exists
    if (!is_dir($upload_dir)) {
        mkdir($upload_dir, 0777, true);
    }

    $new_photo_name = "";
    if (!empty($photo)) {
        // Generate unique image name and move the file
        $photo_type = pathinfo($photo, PATHINFO_EXTENSION);
        $new_photo_name = uniqid() . '.' . $photo_type;
        $target_file = $upload_dir . $new_photo_name;

        if (move_uploaded_file($photo_temp, $target_file)) {
            
        }
    }

    if (empty($errors)) {
        if ($id === '0') {
            // Insert new record
            // echo "INSERT INTO `project_table` (`category`, `img`, `heading`, `content`) 
            //          VALUES ('$category', '$new_photo_name', '$heading', '$content')";
            //          exit;
            $sql1 = "INSERT INTO `project_table` (`category`, `img`, `heading`, `content`) 
                     VALUES ('$category', '$new_photo_name', '$heading', '$content')";
            if ($db->query($sql1) === TRUE) {
                header("location:projects_admin.php");
                exit;
            }
        } else {
           
            if (empty($new_photo_name)) {
                $sql_get_old_image = "SELECT img FROM `project_table` WHERE `id` = '$id'";
                $result = $db->query($sql_get_old_image);
                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    $new_photo_name = $row['img']; // Retain old image
                }
            }
            
            $sql = "UPDATE `project_table` SET `category`='$category', `img`='$new_photo_name', `heading`='$heading', `content`='$content'
                     WHERE `id` = '$id'";
            if ($db->query($sql) === TRUE) {
                header("location:projects_admin.php");
                exit;
            } else {
                echo "Error: " . $sql . "<br>" . $db->error;
            }
        }
    }

    // Display validation errors
    
}

?>
<?php } else { ?>
    <script>
      window.location.href = 'login.php';
    </script>;
  <?php  } ?>
