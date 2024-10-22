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
    $heading = trim($_POST['heading']);
    $content = trim($_POST['content']);
    $id = isset($_POST['id']) ? intval($_POST['id']) : null;  // Get the ID if it's provided for update

    // Simple validation
    if (empty($heading)) {
        $errors[] = "Heading is required.";
    }

    if (empty($content)) {
        $errors[] = "Content is required.";
    }

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

        if (!move_uploaded_file($photo_temp, $target_file)) {
            $errors[] = "Failed to upload the image.";
        }
    }

    // If there are no validation errors, proceed to insert or update the record
    if (empty($errors)) {
        if ($id) {
            // Update existing record if ID is provided
            if (!empty($new_photo_name)) {
                // If a new image is uploaded, include it in the update
                $stmt = $db->prepare("UPDATE `service_table` SET `heading` = ?, `content` = ?, `img` = ? WHERE `id` = ?");
                $stmt->bind_param("sssi", $heading, $content, $new_photo_name, $id);
            } else {
                // If no new image, update without changing the image field
                $stmt = $db->prepare("UPDATE `service_table` SET `heading` = ?, `content` = ? WHERE `id` = ?");
                $stmt->bind_param("ssi", $heading, $content, $id);
            }
        } else {
            // Insert new record if no ID is provided
            $stmt = $db->prepare("INSERT INTO `service_table` (`heading`, `content`, `img`) VALUES (?, ?, ?)");
            $stmt->bind_param("sss", $heading, $content, $new_photo_name);
        }

        // Execute the statement and check if successful
        if ($stmt->execute()) {
            header("location:service_admin.php");
            exit;
        } else {
            echo "Error: " . $stmt->error;
        }
    } else {
        // Display validation errors
        foreach ($errors as $error) {
            echo "<p style='color:red;'>$error</p>";
        }
    }
}
?>
<?php } else { ?>
  <script>
    window.location.href = 'login.php';
  </script>;
<?php  } ?>
